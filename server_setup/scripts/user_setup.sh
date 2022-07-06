set -eu
export CONDA_SETUP=$1
export BASHRC_POSTLUDE=$2


echo $USER user_setup begins
cd ~
echo pwd : `pwd`

(
bash ${CONDA_SETUP} -b -p ~/miniconda3
eval "$(~/miniconda3/bin/conda shell.bash hook)"
conda init
conda install -y -c conda-forge mamba
)

(
grep "$BASHRC_POSTLUDE" ~/.bashrc || cat "${BASHRC_POSTLUDE}" >> ~/.bashrc
)

cp -a /workshop/cf/workshop_setup/sample_data/* ~

echo $USER user_setup complete
