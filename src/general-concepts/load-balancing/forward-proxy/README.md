# Forward Proxy

A forward proxy is an intermediary server between the client and the origin server. Clients connect to the forward proxy server and request a resource (such as a completion) available on a different server that is otherwise inaccessible to them. The forward proxy server retrieves the resource and forwards it to the client.

You can combine both forward proxy and [reverse proxy](/general-concepts/load-balancing/reverse-proxy) to create a [gateway](/general-concepts/load-balancing/gateway).

## llama.cpp Forward Proxy

llama.cpp implements it's own [forward proxy](https://github.com/ggerganov/llama.cpp/tree/148ec970b62c3c5ae0a8bfdaad2fc237aaae350d/examples/rpc) in the form of RPC server. 

It puts the `llama.cpp` server in form of multiple backends and distributes requests among them.

```mermaid
flowchart TD
    rpcb---|TCP|srva
    rpcb---|TCP|srvb
    rpcb-.-|TCP|srvn
    subgraph hostn[Host N]
    srvn[rpc-server]-.-backend3["Backend (CUDA,Metal,etc.)"]
    end
    subgraph hostb[Host B]
    srvb[rpc-server]---backend2["Backend (CUDA,Metal,etc.)"]
    end
    subgraph hosta[Host A]
    srva[rpc-server]---backend["Backend (CUDA,Metal,etc.)"]
    end
    subgraph host[Main Host]
    ggml[llama.cpp]---rpcb[RPC backend]
    end
```

<center><em>
source: <a 
    href="https://github.com/ggerganov/llama.cpp/tree/148ec970b62c3c5ae0a8bfdaad2fc237aaae350d/examples/rpc"
>llama.cpp repository</a>
</center>
