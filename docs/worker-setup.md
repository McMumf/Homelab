# Worker Node Setup

1. Ensure ansible scripts are ran
2. Copy/Paste the output from the following command ran from the master: `kubeadm token create --print-join-command`
   1. If it fails with an error, run the following

        ```sh
        modprobe br_netfilter
        echo '1' > /proc/sys/net/ipv4/ip_forward
        ```

   2. Rerun the join command
3. Label the worker: `kubectl label node <WORKER-NAME> node-role.kubernetes.io/worker=worker`
