import os
import json
from pathlib import Path

def create_project_structure():
    """Create the complete project structure"""
    
    # Create directories
    directories = [
        '.streamlit',
        'app',
        'utils',
        'data/papers'
    ]
    
    for directory in directories:
        os.makedirs(directory, exist_ok=True)
        print(f"✓ Created directory: {directory}")
    
    # Create __init__.py files
    init_files = ['app/__init__.py', 'utils/__init__.py']
    
    for init_file in init_files:
        Path(init_file).touch()
        print(f"✓ Created: {init_file}")
    
    print("\n✅ Project structure created successfully!")
    print("\nNext steps:")
    print("1. Copy the provided code files to their respective locations")
    print("2. Install dependencies: pip install -r requirements.txt")
    print("3. Run the app: streamlit run app/main.py")
    print("4. Deploy to Streamlit Cloud: https://share.streamlit.io")

if __name__ == "__main__":
    create_project_structure()