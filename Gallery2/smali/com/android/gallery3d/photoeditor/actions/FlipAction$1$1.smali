.class Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;
.super Ljava/lang/Object;
.source "FlipAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->transformPhotoView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;

.field final synthetic val$horizontalDegrees:F

.field final synthetic val$verticalDegrees:F


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;->val$horizontalDegrees:F

    iput p3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;->val$verticalDegrees:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;->this$1:Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;->val$horizontalDegrees:F

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;->val$verticalDegrees:F

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->flipPhoto(FF)V

    .line 99
    return-void
.end method
