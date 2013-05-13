.class Lcom/meizu/widget/RecipientEdit$RecipientWorker;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecipientWorker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 3118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3114
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    .line 3119
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3120
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3121
    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3122
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3124
    :try_start_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3125
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3128
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 3129
    return-void

    .line 3128
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic access$104(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3113
    iget v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/meizu/widget/RecipientEdit$RecipientWorker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3113
    iget v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    return v0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3147
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3133
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3134
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;

    .line 3136
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3137
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3138
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3139
    return-void

    .line 3137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
