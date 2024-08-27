# Setting up llama.cpp on Colab/Kaggle notebooks

You would be required to have access to a Colab or Kaggle notebook. The process of setting up is almost the same for both, Make sure you have the GPU turned on for the session. 

## Installation Steps

1. Check the version of python installed:
    ```shell
    python -V 
    ```

2. Find the CUDA driver build:
    ```shell
    nvcc --version
    ```

3. Set the values of the environment variables:
    ```shell
    set LLAMA_CUBLAS=1
    set CMAKE_ARGS=-DLLAMA_CUBLAS=on
    set FORCE_CMAKE=1
    ```

4. Install the below libraries:

    Install llama-cpp (cuda enabled package)
    ```shell
    python -m pip install llama-cpp-python==0.2.7 --prefer-binary --extra-index-url=https://jllllll.github.io/llama-cpp-python-cuBLAS-wheels/AVX2/cu122
    ```
    
    Install torch, torch-vision and torch-audio (make sure to install the latest/most compatible versions)
    ```shell
    pip install torch==2.3.0 torchvision==0.18.0 torchaudio==2.3.0 --index-url https://download.pytorch.org/whl/cu121
    ```
5. Execute the following commands. A requirements file named "gpu_requirements" will be written. You will find the file in the input directory in colab and the output directory in kaggle:

    ```shell
    %%writefile gpu_requirements.txt
    annotated-types==0.7.0
    anyio==4.4.0
    certifi==2022.12.7
    charset-normalizer==2.1.1
    click==8.1.7
    colorama==0.4.6
    diskcache==5.6.3
    dnspython==2.6.1
    email_validator==2.1.1
    exceptiongroup==1.2.1
    filelock==3.13.1
    fsspec==2024.6.0
    h11==0.14.0
    httpcore==1.0.5
    httptools==0.6.1
    httpx==0.27.0
    huggingface-hub==0.23.3
    idna==3.4
    Jinja2==3.1.4
    llama_cpp_python==0.2.89
    markdown-it-py==3.0.0
    MarkupSafe==2.1.5
    mdurl==0.1.2
    mpmath==1.3.0
    networkx==3.2.1
    numpy==1.26.4
    orjson==3.10.3
    packaging==24.0
    pillow==10.2.0
    pydantic==2.7.3
    pydantic_core==2.18.4
    Pygments==2.18.0
    python-dotenv==1.0.1
    python-multipart==0.0.9
    PyYAML==6.0.1
    requests==2.28.1
    rich==13.7.1
    shellingham==1.5.4
    sniffio==1.3.1
    starlette==0.37.2
    sympy==1.12
    torch==2.3.0+cu121
    torchaudio==2.3.0+cu121
    torchvision==0.18.0+cu121
    tqdm==4.66.4
    typer==0.12.3
    typing_extensions==4.12.1
    ujson==5.10.0
    watchfiles==0.22.0
    ```

6. Install the contents of the requirements file (change the path of the file according to the environment you're in):

    Kaggle:
    ```shell
    pip install -r /kaggle/input/gpu-req/gpu_requirements.txt
    ```

    Colab:
    ```shell
    pip install -r gpu_requirements.txt
    ```