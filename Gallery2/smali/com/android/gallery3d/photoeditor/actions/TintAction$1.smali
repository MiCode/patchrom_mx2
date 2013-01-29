.class Lcom/android/gallery3d/photoeditor/actions/TintAction$1;
.super Ljava/lang/Object;
.source "TintAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/TintAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/TintAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/TintFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/TintAction;Lcom/android/gallery3d/photoeditor/filters/TintFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/TintAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(IZ)V
    .locals 2
    .parameter "color"
    .parameter "fromUser"

    .prologue
    .line 44
    if-eqz p2, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->setTint(I)V

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/TintAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/TintAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/TintAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 48
    :cond_0
    return-void
.end method
