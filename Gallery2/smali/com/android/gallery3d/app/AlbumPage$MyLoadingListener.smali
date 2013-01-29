.class Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1306
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumPage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3500(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 1315
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumPage;->access$3700(Lcom/android/gallery3d/app/AlbumPage;I)V

    .line 1310
    return-void
.end method
