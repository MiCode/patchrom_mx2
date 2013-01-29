.class public Lcom/android/gallery3d/photoeditor/EffectsMenu;
.super Lcom/android/gallery3d/photoeditor/RestorableView;
.source "EffectsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;
    }
.end annotation


# instance fields
.field private mIsMarkedMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->mIsMarkedMode:Z

    .line 51
    return-void
.end method

.method private setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V
    .locals 1
    .parameter "listener"
    .parameter "toggleId"
    .parameter "effectsId"

    .prologue
    .line 66
    new-instance v0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;ILcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;I)V

    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected childLayoutId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f040059

    return v0
.end method

.method public clearSelected()V
    .locals 5

    .prologue
    .line 77
    const v3, 0x7f0d0117

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 78
    .local v1, menu:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, toggle:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setViewSelected(IZ)V

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v2           #toggle:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->mIsMarkedMode:Z

    if-nez v0, :cond_0

    .line 107
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setIsMarkedMode(Z)V
    .locals 2
    .parameter "isMarkedMode"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->mIsMarkedMode:Z

    .line 101
    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnToggleListener(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 59
    const v0, 0x7f0d0119

    const v1, 0x7f040053

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 60
    const v0, 0x7f0d011a

    const v1, 0x7f040056

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 61
    const v0, 0x7f0d0118

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 62
    return-void
.end method
