# get credential of EKS
aws eks update-kubeconfig --region ap-northeast-2 --name cwave
# get credential of kind
kind get kubeconfig --internal --name cwave-cluster > bb.txt

# get kind credential 

# test aws cli
aws s3 ls
aws sts get-caller-identity

# aws default profile
aws configure --profile cwave
export AWS_PROFILE=cwave

# kubectl rename context-name
kubectl config rename-context old-name new-name
# kubectl config rename-context arn:aws:eks:ap-northeast-2:654654260949:cluster/cwave eks
# kubectl config rename-context kind-cwave-cluster local

## AWS 디스크 생성
aws ec2 create-volume --volume-type gp2 --size 80 --availability-zone ap-northeast-2a

## AWS 삭제
aws ec2 delete-volume --volume-id vol-038a54dff454064f6

# AWS 디스크 조회
aws ec2 describe-volumes --filters Name=status,Values=available Name=availability-zone,Values=ap-northeast-2a

