.class public Landroid/net/wifi/WifiManager$MulticastLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulticastLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1797
    iput-object p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1798
    iput-object p2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    .line 1799
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    .line 1800
    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 1802
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 1803
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1790
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1826
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1827
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v2, :cond_0

    .line 1829
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1830
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1831
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$300(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_2

    .line 1832
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    .line 1833
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of wifi locks"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1837
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1838
    :catch_0
    move-exception v0

    .line 1840
    :goto_1
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 1842
    :cond_0
    monitor-exit v1

    .line 1843
    return-void

    .line 1827
    :cond_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1836
    :cond_2
    :try_start_5
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$308(Landroid/net/wifi/WifiManager;)I

    .line 1837
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1842
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1934
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1935
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 1936
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 1937
    return-void
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 1913
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1914
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 1870
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1871
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1873
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    .line 1874
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1875
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$310(Landroid/net/wifi/WifiManager;)I

    .line 1876
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1879
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 1881
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-gez v0, :cond_2

    .line 1882
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MulticastLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1885
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1871
    :cond_1
    :try_start_4
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1876
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1877
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1885
    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1886
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .parameter "refCounted"

    .prologue
    .line 1904
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 1905
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1920
    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 1921
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    if-eqz v3, :cond_0

    const-string v1, "held; "

    .line 1923
    .local v1, s2:Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v3, :cond_1

    .line 1924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1928
    .local v2, s3:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MulticastLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 1922
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 1926
    .restart local v1       #s2:Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_1

    .line 1929
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
