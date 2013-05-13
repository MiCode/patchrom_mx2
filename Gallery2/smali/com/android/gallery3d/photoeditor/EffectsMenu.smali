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
.field private context:Landroid/content/Context;

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field private mIsMarkedMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->mIsMarkedMode:Z

    .line 85
    new-instance v0, Lcom/android/gallery3d/photoeditor/EffectsMenu$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/EffectsMenu$2;-><init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/EffectsMenu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V
    .locals 1
    .parameter "listener"
    .parameter "toggleId"
    .parameter "effectsId"

    .prologue
    .line 70
    new-instance v0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;ILcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;I)V

    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected childLayoutId()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f04005e

    return v0
.end method

.method public clearSelected()V
    .locals 5

    .prologue
    .line 108
    const v3, 0x7f0d012c

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 109
    .local v1, menu:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, toggle:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setViewSelected(IZ)V

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v2           #toggle:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->mIsMarkedMode:Z

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    :cond_0
    return-void
.end method

.method public setIsMarkedMode(Z)V
    .locals 2
    .parameter "isMarkedMode"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->mIsMarkedMode:Z

    .line 132
    const v0, 0x7f0d012b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLongClickListener()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f0d012e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 82
    const v0, 0x7f0d012f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    return-void
.end method

.method public setOnToggleListener(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 63
    const v0, 0x7f0d012e

    const v1, 0x7f040058

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 64
    const v0, 0x7f0d012f

    const v1, 0x7f04005b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 65
    const v0, 0x7f0d012d

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 66
    return-void
.end method
