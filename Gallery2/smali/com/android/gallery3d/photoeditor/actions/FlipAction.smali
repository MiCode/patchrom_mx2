.class public Lcom/android/gallery3d/photoeditor/actions/FlipAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "FlipAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;-><init>()V

    .line 41
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->disableFilterOutput()V

    .line 43
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFlipView()Lcom/android/gallery3d/photoeditor/actions/FlipView;

    move-result-object v1

    .line 44
    .local v1, flipView:Lcom/android/gallery3d/photoeditor/actions/FlipView;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/FlipAction;Lcom/android/gallery3d/photoeditor/filters/FlipFilter;Lcom/android/gallery3d/photoeditor/actions/FlipView;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->setOnFlipChangeListener(Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;)V

    .line 104
    invoke-virtual {v1, v3, v3}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->setFlippedAngles(FF)V

    .line 105
    const/high16 v2, 0x4334

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->setFlipSpan(F)V

    .line 106
    return-void
.end method
