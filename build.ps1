$INPUT_DIR = ".\protos"
$OUT_DIR = ".\"

protoc --proto_path="$INPUT_DIR" --go_out="$OUT_DIR" --go-grpc_out="$OUT_DIR" $INPUT_DIR\*.proto

Write-Output "done!"
