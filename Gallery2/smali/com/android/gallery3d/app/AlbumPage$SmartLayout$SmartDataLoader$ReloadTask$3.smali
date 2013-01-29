.class Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2263
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x40

    .line 2266
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I

    move-result v0

    .line 2267
    .local v0, slotCount:I
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v2, v2, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    iget-object v2, v2, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->this$1:Lcom/android/gallery3d/app/AlbumPage$SmartLayout;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->mVisibleStart:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout;->access$7300(Lcom/android/gallery3d/app/AlbumPage$SmartLayout;)I

    move-result v2

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I

    .line 2268
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I

    .line 2269
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v0, :cond_0

    .line 2270
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x40

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7202(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I

    .line 2271
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$3;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    #setter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateCount:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7402(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;I)I

    .line 2273
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
