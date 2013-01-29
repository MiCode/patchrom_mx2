.class Lcom/android/gallery3d/photoeditor/actions/BrightnessAction$1;
.super Ljava/lang/Object;
.source "BrightnessAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectBrightnessFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;Lcom/android/gallery3d/photoeditor/filters/CommonEffectBrightnessFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectBrightnessFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(FZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 35
    if-eqz p2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectBrightnessFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/CommonEffectBrightnessFilter;->setScale(F)V

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;->access$000(Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;)Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setBrightness(F)V

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectBrightnessFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/BrightnessAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 40
    :cond_0
    return-void
.end method
