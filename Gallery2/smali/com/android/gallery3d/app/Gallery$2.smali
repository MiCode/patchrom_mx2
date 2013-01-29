.class Lcom/android/gallery3d/app/Gallery$2;
.super Landroid/database/ContentObserver;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/Gallery;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/app/Gallery$2;->this$0:Lcom/android/gallery3d/app/Gallery;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 321
    return-void
.end method
