yay -S intellij-idea-ultimate-edition 
for d in ~/.config/JetBrains/*
do
echo '# custom IntelliJ IDEA VM options (expand/override 'bin/idea64.vmoptions')
-javaagent:/home/yu/Software/jetbra/ja-netfilter.jar=jetbrains
--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED

' | tee -a $d/idea64.vmoptions
done
