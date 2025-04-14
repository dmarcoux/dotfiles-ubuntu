# Setup mise

# In JetBrains IDEs and other IDEs/text editors Some plugins cannot find tools/SDKs installed by mise yet
# but might have support for asdf. In that case, a workaround is to symlink the mise tool directory which has same layout as asdf.
ln --symbolic ~/.local/share/mise ~/.asdf
