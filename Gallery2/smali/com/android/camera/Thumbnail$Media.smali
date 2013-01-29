.class Lcom/android/camera/Thumbnail$Media;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final id:J

.field public final orientation:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;)V
    .locals 0
    .parameter "id"
    .parameter "orientation"
    .parameter "dateTaken"
    .parameter "uri"

    .prologue
    .line 223
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-wide p1, p0, Lcom/android/camera/Thumbnail$Media;->id:J

    .line 225
    iput p3, p0, Lcom/android/camera/Thumbnail$Media;->orientation:I

    .line 226
    iput-wide p4, p0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    .line 227
    iput-object p6, p0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 228
    return-void
.end method
