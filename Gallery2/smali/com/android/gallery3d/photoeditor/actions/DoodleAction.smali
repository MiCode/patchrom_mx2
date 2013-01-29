.class public Lcom/android/gallery3d/photoeditor/actions/DoodleAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "DoodleAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public hasToolPannel()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 42
    new-instance v1, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-direct {v1}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;-><init>()V

    .line 43
    .local v1, filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->disableFilterOutput()V

    .line 45
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 46
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setOnDoodleChangeListener(Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;)V

    .line 108
    return-void
.end method
