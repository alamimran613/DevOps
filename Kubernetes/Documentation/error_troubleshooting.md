# Errors and Troubleshooting

## ImagePullBackOff
Reason:=> You have given wrong image name in definition file or private is private. For private image we have to provide credentails for private registry.

Solution:=> Delete the pod and correct image name then run pod again.

## CrashLoopBackOff
Reason:=> Container is try to restart and failed.

Solution:=> Get logs of pod using "kubectl logs web2" and see what is the problem then solve this. Delete the pod and recreate it.