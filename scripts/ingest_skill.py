import os
import shutil
import sys
import json

def ingest_resource(source_path, resource_type):
    """
    Ingests a skill, agent, or workflow into KirzKit.
    resource_type: 'skills', 'agents', or 'workflows'
    """
    kirzkit_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    target_dir = os.path.join(kirzkit_root, resource_type)
    
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)
        
    resource_name = os.path.basename(source_path)
    dest_path = os.path.join(target_dir, resource_name)
    
    try:
        if os.path.isdir(source_path):
            if os.path.exists(dest_path):
                shutil.rmtree(dest_path)
            shutil.copytree(source_path, dest_path)
        else:
            shutil.copy2(source_path, dest_path)
        print(f"Successfully ingested {resource_name} into KirzKit {resource_type}.")
        return True
    except Exception as e:
        print(f"Error ingesting {resource_name}: {e}")
        return False

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python ingest_skill.py <source_path> <type: skills|agents|workflows>")
        sys.exit(1)
        
    source = sys.argv[1]
    rtype = sys.argv[2]
    ingest_resource(source, rtype)
