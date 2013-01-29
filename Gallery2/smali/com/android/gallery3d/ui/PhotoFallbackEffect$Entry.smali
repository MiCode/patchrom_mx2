.class public Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;
.super Ljava/lang/Object;
.source "PhotoFallbackEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoFallbackEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public dest:Landroid/graphics/Rect;

.field public index:I

.field public path:Lcom/android/gallery3d/data/Path;

.field public source:Landroid/graphics/Rect;

.field public texture:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 0
    .parameter "path"
    .parameter "source"
    .parameter "texture"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcom/android/gallery3d/data/Path;

    .line 45
    iput-object p2, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 46
    iput-object p3, p0, Lcom/android/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcom/android/gallery3d/ui/RawTexture;

    .line 47
    return-void
.end method
