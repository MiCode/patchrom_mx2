.class public Lcom/android/gallery3d/app/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "im"
    .parameter "del"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 97
    iput p2, p0, Lcom/android/gallery3d/app/GifDecoder$GifFrame;->delay:I

    .line 98
    return-void
.end method
