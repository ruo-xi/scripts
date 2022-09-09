
for d in ~/.config/JetBrains/IntelliJIdea*
do
echo '# custom IntelliJ IDEA VM options (expand/override 'bin/idea64.vmoptions')
-javaagent:/home/yu/Software/jetbra/ja-netfilter.jar=jetbrains' | tee -a $d/idea64.vmoptions
done
