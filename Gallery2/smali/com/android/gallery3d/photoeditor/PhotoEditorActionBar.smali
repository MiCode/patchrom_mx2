.class public Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
.super Lcom/android/gallery3d/photoeditor/RestorableView;
.source "PhotoEditorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;
    }
.end annotation


# instance fields
.field private mIsMarkedMode:Z

.field private mListener:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->mIsMarkedMode:Z

    .line 48
    return-void
.end method

.method private showSaveOrShare()V
    .locals 5

    .prologue
    const v4, 0x7f0d0103

    .line 115
    const v3, 0x7f0d0100

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 117
    .local v1, showShare:Z
    :goto_0
    const v3, 0x7f0d0102

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    .line 118
    .local v2, switcher:Landroid/widget/ViewSwitcher;
    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 119
    .local v0, next:I
    if-eqz v1, :cond_0

    const v3, 0x7f0d0104

    if-eq v0, v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-ne v0, v4, :cond_2

    .line 121
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 123
    :cond_2
    return-void

    .line 115
    .end local v0           #next:I
    .end local v1           #showShare:Z
    .end local v2           #switcher:Landroid/widget/ViewSwitcher;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSave()Z
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected childLayoutId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f04004c

    return v0
.end method

.method public clickBack()V
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f0d00fe

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 143
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->mIsMarkedMode:Z

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->showSaveOrShare()V

    .line 103
    const v0, 0x7f0d00ff

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->mListener:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->mListener:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-super {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->onFinishInflate()V

    .line 93
    invoke-virtual {p0, v0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->updateButtons(ZZ)V

    .line 95
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/photoeditor/RestorableView;->onLayout(ZIIII)V

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->mIsMarkedMode:Z

    if-nez v2, :cond_1

    .line 86
    const v2, 0x7f0d00ff

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sub-int v2, p4, p2

    if-le v1, v2, :cond_2

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_1
    return-void

    .line 86
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setIsMarkedMode(Z)V
    .locals 0
    .parameter "isMarkedMode"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->mIsMarkedMode:Z

    .line 159
    return-void
.end method

.method public setItemSelectedListener(Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->mListener:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$ItemSelectedListener;

    .line 155
    return-void
.end method

.method public updateButtons(ZZ)V
    .locals 1
    .parameter "canUndo"
    .parameter "canRedo"

    .prologue
    .line 126
    const v0, 0x7f0d0100

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setViewEnabled(IZ)V

    .line 127
    const v0, 0x7f0d0101

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setViewEnabled(IZ)V

    .line 128
    const v0, 0x7f0d0103

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setViewEnabled(IZ)V

    .line 129
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->showSaveOrShare()V

    .line 130
    return-void
.end method
