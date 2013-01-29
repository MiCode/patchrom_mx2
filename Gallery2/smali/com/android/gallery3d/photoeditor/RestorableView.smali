.class public abstract Lcom/android/gallery3d/photoeditor/RestorableView;
.super Landroid/widget/FrameLayout;
.source "RestorableView.java"


# instance fields
.field private final changedViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final clickRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->clickRunnables:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->inflater:Landroid/view/LayoutInflater;

    .line 42
    return-void
.end method

.method private recreateChildView()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->removeAllViews()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->childLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract childLayoutId()I
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/photoeditor/RestorableView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->recreateChildView()V

    .line 68
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->clickRunnables:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Runnable;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v5}, Lcom/android/gallery3d/photoeditor/RestorableView;->setClickRunnable(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 71
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Runnable;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 72
    .local v3, id:I
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, changed:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/gallery3d/photoeditor/RestorableView;->setViewEnabled(IZ)V

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/gallery3d/photoeditor/RestorableView;->setViewSelected(IZ)V

    goto :goto_1

    .line 76
    .end local v0           #changed:Landroid/view/View;
    .end local v3           #id:I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->recreateChildView()V

    .line 57
    return-void
.end method

.method public setClickRunnable(ILjava/lang/Runnable;)V
    .locals 2
    .parameter "id"
    .parameter "r"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/RestorableView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/RestorableView$1;-><init>(Lcom/android/gallery3d/photoeditor/RestorableView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->clickRunnables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setViewEnabled(IZ)V
    .locals 2
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setViewSelected(IZ)V
    .locals 2
    .parameter "id"
    .parameter "selected"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/RestorableView;->changedViews:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method
