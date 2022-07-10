
cd iac\3000100-simple-sentinel-cli

cd ..\..

# Ensure Sentinel is installed.
sentinel --version

# If sentinel is not installed, then install it. See the readme file.

sentinel apply minimal.sentinel

sentinel apply single-line-policy-pass.sentinel

# The following will fail.
sentinel apply single-line-policy-fail.sentinel

sentinel apply two-rule-policy.sentinel