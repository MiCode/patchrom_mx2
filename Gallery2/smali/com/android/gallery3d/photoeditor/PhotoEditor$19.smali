.class Lcom/android/gallery3d/photoeditor/PhotoEditor$19;
.super Landroid/database/ContentObserver;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$19;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$19;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    .line 583
    return-void
.end method
