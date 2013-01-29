.class Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;
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
    .line 2277
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

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
    .line 2277
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdateVisibleStart:I
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7200(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedVisibleItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$7500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask$4;->this$3:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->mUpdatedItemCount:I
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6400(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;)I

    move-result v3

    #calls: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->updateItems(ILjava/util/ArrayList;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->access$6500(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;ILjava/util/ArrayList;I)V

    .line 2281
    const/4 v0, 0x0

    return-object v0
.end method
