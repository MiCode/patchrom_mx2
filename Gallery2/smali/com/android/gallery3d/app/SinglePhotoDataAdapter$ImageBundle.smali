.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageBundle"
.end annotation


# instance fields
.field public final backupImage:Landroid/graphics/Bitmap;

.field public final decoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "decoder"
    .parameter "backupImage"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 85
    iput-object p2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    .line 86
    return-void
.end method
