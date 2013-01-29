.class Lcom/android/gallery3d/photoeditor/actions/CropAction$1;
.super Ljava/lang/Object;
.source "CropAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/CropAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/CropAction;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropChanged(Landroid/graphics/RectF;Z)V
    .locals 2
    .parameter "cropBounds"
    .parameter "fromUser"

    .prologue
    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/CropAction;->filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->access$000(Lcom/android/gallery3d/photoeditor/actions/CropAction;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->setCropBounds(Landroid/graphics/RectF;)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/CropAction;->filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->access$000(Lcom/android/gallery3d/photoeditor/actions/CropAction;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 64
    :cond_0
    return-void
.end method
