.class Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;
.super Ljava/lang/Object;
.source "DoodlePaintDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

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
    .line 144
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintSizeBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$300(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintPathPreView:Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$400(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/PaintPathPreview;->setPaintSize(I)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    #setter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$102(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;I)I

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintColor:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$500(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->refreshPaintColor(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 154
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintSizeBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$300(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;->onDoodlePaintSize(I)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mListener:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$000(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$3;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mPaintAlpha:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->access$100(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintChangeListener;->onDoodlePaintAlpha(I)V

    goto :goto_0
.end method
