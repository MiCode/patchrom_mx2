.class Lcom/meizu/widget/RecipientEdit$RecipientObserver;
.super Landroid/database/ContentObserver;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mObserverRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 3183
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    .line 3184
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3194
    new-instance v0, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/RecipientEdit$RecipientObserver$1;-><init>(Lcom/meizu/widget/RecipientEdit$RecipientObserver;)V

    iput-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->mObserverRunnable:Ljava/lang/Runnable;

    .line 3185
    iput-object p2, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->mHandler:Landroid/os/Handler;

    .line 3186
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->mObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3191
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$RecipientObserver;->mObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3192
    return-void
.end method
