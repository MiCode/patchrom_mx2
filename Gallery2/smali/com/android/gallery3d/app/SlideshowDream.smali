.class public Lcom/android/gallery3d/app/SlideshowDream;
.super Landroid/support/v13/dreams/BasicDream;
.source "SlideshowDream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/support/v13/dreams/BasicDream;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bndl"

    .prologue
    const/4 v4, 0x1

    .line 10
    invoke-super {p0, p1}, Landroid/support/v13/dreams/BasicDream;->onCreate(Landroid/os/Bundle;)V

    .line 11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "slideshow"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dream"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/SlideshowDream;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 19
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/SlideshowDream;->startActivity(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/gallery3d/app/SlideshowDream;->finish()V

    .line 21
    return-void
.end method
