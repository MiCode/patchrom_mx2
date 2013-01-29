.class public Lcom/android/gallery3d/photoeditor/actions/TintAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "TintAction.java"


# direct methods
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
.method public prepare()V
    .locals 3

    .prologue
    .line 37
    new-instance v1, Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-direct {v1}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;-><init>()V

    .line 39
    .local v1, filter:Lcom/android/gallery3d/photoeditor/filters/TintFilter;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addColorPicker()Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    move-result-object v0

    .line 40
    .local v0, colorPicker:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/TintAction$1;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/photoeditor/actions/TintAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/TintAction;Lcom/android/gallery3d/photoeditor/filters/TintFilter;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    .line 50
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setColorIndex(I)V

    .line 52
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->setTint(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/TintAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 54
    return-void
.end method
