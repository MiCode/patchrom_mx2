.class Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;
.super Ljava/lang/Object;
.source "ColorSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

.field final synthetic val$listener:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;->val$listener:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;->val$listener:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->access$000(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-interface {v0, v1, p3}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;->onColorChanged(IZ)V

    .line 123
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 127
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 131
    return-void
.end method
