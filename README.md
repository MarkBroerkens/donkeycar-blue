# donkeycar-blue


## PC setup on Mac M1
Install Conda. 

These four commands quickly and quietly install the latest M1 macOS version of the installer and then clean up after themselves. To install a different version or architecture of Miniconda for macOS, change the name of the .sh installer in the curl command.

```
mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
````

After installing, initialize your newly-installed Miniconda. The following commands initialize for bash and zsh shells:

```
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
```

Setup your `donkey` conda env with:

```
conda create -n donkey python=3.11
conda activate donkey
```

```
brew install ffmpeg
```

```
pip install tensorflow==2.15.1
pip install tensorflow-metal
pip install donkeycar\[pc\]
```



```
pip install donkeycar\[macos\]
pip install tensorflow
```