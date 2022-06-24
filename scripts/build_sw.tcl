set OUTPUT workspace
set PWD [pwd]

puts "Current working directory is $PWD"
puts "Settings workspace $PWD/$OUTPUT"
setws $OUTPUT

platform create -name hw_pfm -hw hw/design_1_wrapper.xsa -out $OUTPUT
domain create -name "mBlaze_standalone" -os standalone -proc "microblaze_0"

platform generate
platform active hw_pfm

app create -name ddr3_test -domain mBlaze_standalone -template "Memory Tests"
app build -name "ddr3_test"

app create -name hello_world -domain mBlaze_standalone -template "Hello World"
app build -name "hello_world"
