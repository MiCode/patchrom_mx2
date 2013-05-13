.class Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$1;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$1;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$1;->this$2:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;->access$4900(Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader;)Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumPage$SmartLayout$SmartDataLoader$ReloadTask;->notifyDirty()V

    .line 2183
    :cond_0
    return-void
.end method
