rm -rf hardware/qcom-caf/sm8150/display
rm -rf hardware/qcom-caf/msm8996/display
git clone https://github.com/omnirom/android_hardware_qcom_display-caf-msm8996 hardware/qcom-caf/msm8996/display
cd frameworks/av
git reset --hard xtended/xq
git fetch https://github.com/Project-Xtended/frameworks_av xq-anp
git cherry-pick d4b819c79fedc19bda1c565969f2cc39981a5503
git cherry-pick cf5b100a734071d1698564911254783f1eae9ea1
cd ../../vendor/MiuiCamera/system/priv-app/MiuiCamera/ && rm MiuiCamera.apk
wget https://github.com/Xtended-Devices/vendor_MiuiCamera/raw/xq-onclite/system/priv-app/MiuiCamera/MiuiCamera.apk
cd ../../../../..
