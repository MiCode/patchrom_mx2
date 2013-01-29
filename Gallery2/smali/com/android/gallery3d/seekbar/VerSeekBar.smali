.class public Lcom/android/gallery3d/seekbar/VerSeekBar;
.super Lcom/android/gallery3d/seekbar/AbsSeekBar;
.source "VerSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/seekbar/VerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/seekbar/VerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/seekbar/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/seekbar/VerSeekBar;->setTouchMode(I)V

    .line 83
    return-void
.end method


# virtual methods
.method onProgressRefresh(FZ)V
    .locals 2
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/VerSeekBar;->mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/VerSeekBar;->mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/android/gallery3d/seekbar/VerSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;->onProgressChanged(Lcom/android/gallery3d/seekbar/VerSeekBar;IZ)V

    .line 92
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStartTrackingTouch()V

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/VerSeekBar;->mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/VerSeekBar;->mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;->onStartTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V

    .line 112
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->onStopTrackingTouch()V

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/VerSeekBar;->mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/seekbar/VerSeekBar;->mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;->onStopTrackingTouch(Lcom/android/gallery3d/seekbar/VerSeekBar;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setBreakPointLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/gallery3d/seekbar/AbsSeekBar;->setBreakPointLevel(I)V

    .line 124
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/seekbar/VerSeekBar;->mOnSeekBarChangeListener:Lcom/android/gallery3d/seekbar/VerSeekBar$OnVerSeekBarChangeListener;

    .line 104
    return-void
.end method
