.class Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;
.super Ljava/lang/Object;
.source "ContrastAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/ContrastAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/ContrastAction;Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/ContrastAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(FZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;->setScale(F)V

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/ContrastAction;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->access$000(Lcom/android/gallery3d/photoeditor/actions/ContrastAction;)Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setContrast(F)V

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/ContrastAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ContrastAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectContrastFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ContrastAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 41
    :cond_0
    return-void
.end method
