.class Lcom/android/gallery3d/app/CropImage$12;
.super Landroid/database/ContentObserver;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$12;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage$12;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 1167
    return-void
.end method
