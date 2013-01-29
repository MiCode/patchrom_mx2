.class Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$1;
.super Ljava/lang/Object;
.source "ScaleSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setOnScaleChangeListener(Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

.field final synthetic val$listener:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$1;->val$listener:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$1;->val$listener:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1, p3}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;->onProgressChanged(FZ)V

    .line 48
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 52
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 56
    return-void
.end method
