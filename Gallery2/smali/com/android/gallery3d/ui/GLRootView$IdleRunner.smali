.class Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/GLRootView;)V
    .locals 1
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 477
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$100(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    .line 457
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 458
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$100(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 471
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$100(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;

    .line 460
    .local v0, listener:Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$300(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/GLCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$400(Lcom/android/gallery3d/ui/GLRootView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    if-nez v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 460
    .end local v0           #listener:Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 465
    .restart local v0       #listener:Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 467
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$100(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    .line 468
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$100(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$400(Lcom/android/gallery3d/ui/GLRootView;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 470
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 465
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    #getter for: Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
