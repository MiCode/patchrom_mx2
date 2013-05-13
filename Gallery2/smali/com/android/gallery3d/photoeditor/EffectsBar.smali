.class public Lcom/android/gallery3d/photoeditor/EffectsBar;
.super Landroid/widget/LinearLayout;
.source "EffectsBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    }
.end annotation


# static fields
.field public static final EFFECT_NAME_ARRAY:[Ljava/lang/String;


# instance fields
.field private actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

.field private activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field private activeEffects:Landroid/view/ViewGroup;

.field private artisticButtonValid:Z

.field private currentEffectId:I

.field private dst:[Landroid/graphics/Bitmap;

.field private effectToolPanel:Landroid/view/ViewGroup;

.field private effectsGallery:Landroid/view/View;

.field private effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

.field private exposureButtonValid:Z

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isClear:Z

.field private isInMarkedMode:Z

.field private isOpenGallery:Z

.field private isSetupEffectClick:Z

.field private lastEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field private mEffectState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoadEffectActionButton:Z

.field private mSourceBmp:Landroid/graphics/Bitmap;

.field private volatile paused:Z

.field private preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field private source:Lcom/android/gallery3d/photoeditor/Photo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BlackAndWhiteFilter"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LomoFilter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ReminisenceFilter"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PostcardFilter"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CountryFilter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LightColorFilter"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ColdNostalgiaFilter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TimeFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GrassFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WarmFilter"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CommonEffectBrightnessFilter"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CommonEffectContrastFilter"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CommonEffectColorTemperatureFilter"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CommonEffectSaturationFilter"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CropFilter"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "StraightenFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RotateFilter"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "FlipFilter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/photoeditor/EffectsBar;->EFFECT_NAME_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    .line 62
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->dst:[Landroid/graphics/Bitmap;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    .line 65
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    .line 72
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isInMarkedMode:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mIsLoadEffectActionButton:Z

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/photoeditor/EffectsBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/gallery3d/photoeditor/EffectsBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->createEffectsGallery(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->lastEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/EffectsMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    return-object v0
.end method

.method private createEffectsGallery(I)V
    .locals 13
    .parameter "effectsId"

    .prologue
    .line 267
    const/4 v6, 0x1

    .line 268
    .local v6, replaceable:Z
    const/4 v0, 0x0

    .line 269
    .local v0, begin:I
    const-string v9, ""

    .line 270
    .local v9, text:Ljava/lang/String;
    const v10, 0x7f040058

    if-ne p1, v10, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0117

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 272
    const/4 v6, 0x0

    .line 273
    const/4 v0, 0x0

    .line 280
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setVisibility(I)V

    .line 281
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v11, 0x7f0d0103

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04005d

    const/4 v12, 0x0

    invoke-virtual {v10, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 284
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {v10, p1}, Landroid/view/View;->setId(I)V

    .line 285
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const v11, 0x7f0d012a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 286
    .local v7, scrollView:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 287
    .local v3, effects:Landroid/view/ViewGroup;
    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    .line 288
    const/4 v5, 0x0

    .line 289
    .local v5, offsetX:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_5

    .line 290
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 291
    .local v2, effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getSelectIdByEffectName(Ljava/lang/String;)I

    move-result v8

    .line 292
    .local v8, selectId:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_1

    .line 293
    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->drawImageButtonBounds()V

    .line 294
    mul-int/lit16 v5, v8, 0xb0

    .line 296
    :cond_1
    invoke-virtual {v2, v6}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->setReplaceable(Z)V

    .line 297
    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 298
    const v10, 0x7f04005c

    if-eq p1, v10, :cond_2

    .line 299
    const v10, 0x7f0d0129

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->dst:[Landroid/graphics/Bitmap;

    add-int v12, v4, v0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    .end local v2           #effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .end local v3           #effects:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v5           #offsetX:I
    .end local v7           #scrollView:Landroid/view/ViewGroup;
    .end local v8           #selectId:I
    :cond_3
    const v10, 0x7f04005b

    if-ne p1, v10, :cond_4

    .line 275
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0118

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 277
    :cond_4
    const v10, 0x7f04005c

    if-ne p1, v10, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0119

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 302
    .restart local v3       #effects:Landroid/view/ViewGroup;
    .restart local v4       #i:I
    .restart local v5       #offsetX:I
    .restart local v7       #scrollView:Landroid/view/ViewGroup;
    :cond_5
    const v10, 0x7f040058

    if-ne p1, v10, :cond_6

    .line 303
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040061

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, child:Landroid/view/View;
    const v10, 0x7f0d0129

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    const v10, 0x7f0d0129

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    new-instance v11, Lcom/android/gallery3d/photoeditor/EffectsBar$2;

    invoke-direct {v11, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$2;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v10, 0x7f0d0129

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 328
    .end local v1           #child:Landroid/view/View;
    :cond_6
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 329
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    invoke-direct {p0, v7, v5}, Lcom/android/gallery3d/photoeditor/EffectsBar;->scrollToSelectChild(Landroid/view/ViewGroup;I)V

    .line 331
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/gallery3d/photoeditor/EffectsBar;->addView(Landroid/view/View;I)V

    .line 332
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mIsLoadEffectActionButton:Z

    .line 333
    return-void
.end method

.method private exitActiveEffect(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$6;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$6;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->end(Ljava/lang/Runnable;)V

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private exitEffectsGallery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 418
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const v3, 0x7f0d012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 422
    .local v0, scrollView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    .end local v0           #scrollView:Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 426
    const/4 v1, 0x1

    .line 428
    :cond_1
    return v1
.end method

.method private getInstanceFromName(Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/filters/Filter;
    .locals 6
    .parameter "name"

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, filter:Lcom/android/gallery3d/photoeditor/filters/Filter;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.gallery3d.photoeditor.filters."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 229
    :goto_0
    return-object v2

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/InstantiationException;
    const-string v3, "TAG"

    const-string v4, "Instantiation exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 225
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "TAG"

    const-string v4, "class access"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 227
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " class not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private preProcessFilter(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x3f666666

    const/4 v3, 0x0

    const/high16 v8, 0x3f00

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v3

    .line 234
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 235
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v1

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/gallery3d/photoeditor/Photo;->create(II)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v4

    .line 236
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 237
    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v1

    .line 238
    if-nez p2, :cond_2

    .line 239
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    new-instance v6, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, p0, v7, v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;ILjava/lang/String;Z)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getInstanceFromName(Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v5

    .line 243
    if-eqz v5, :cond_1

    .line 244
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/photoeditor/Photo;->matchDimension(Lcom/android/gallery3d/photoeditor/Photo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    const-class v6, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 246
    const-string v6, "CommonEffectBrightnessFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 247
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    const v6, 0x3f333333

    invoke-virtual {v1, v6, v8, v8, v8}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    .line 256
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->setContext(Landroid/content/Context;)V

    .line 257
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v5, v1, v4}, Lcom/android/gallery3d/photoeditor/filters/Filter;->process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V

    .line 258
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->dst:[Landroid/graphics/Bitmap;

    add-int v5, v2, p2

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->save()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v1, v5

    .line 259
    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 234
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 241
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    new-instance v6, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    invoke-direct {v6, p0, v2, v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;ILjava/lang/String;Z)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 248
    :cond_3
    const-string v6, "CommonEffectContrastFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v8, v8}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    goto :goto_2

    .line 250
    :cond_4
    const-string v6, "CommonEffectColorTemperatureFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    invoke-virtual {v1, v8, v8, v9, v8}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    goto :goto_2

    .line 252
    :cond_5
    const-string v6, "CommonEffectSaturationFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    const/high16 v6, 0x3f80

    invoke-virtual {v1, v8, v8, v8, v6}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    goto :goto_2

    .line 263
    :cond_6
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setDefaultValue()V

    .line 264
    return-void
.end method

.method private scrollToSelectChild(Landroid/view/ViewGroup;I)V
    .locals 4
    .parameter "scrollview"
    .parameter "offset"

    .prologue
    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$3;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Landroid/view/ViewGroup;I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    return-void
.end method

.method private setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 348
    const v0, 0x7f0d0129

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$4;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$4;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    return-void
.end method


# virtual methods
.method public changeEffectsMenu(ZI)Z
    .locals 6
    .parameter "isSelected"
    .parameter "effectsId"

    .prologue
    const v5, 0x7f0d010a

    const v4, 0x7f04005b

    const v3, 0x7f040058

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 667
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    if-nez v1, :cond_0

    move p1, v0

    .line 720
    .end local p1
    :goto_0
    return p1

    .line 670
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    move p1, v0

    .line 671
    goto :goto_0

    .line 673
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v3, :cond_3

    .line 674
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    .line 678
    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 679
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->clickBack()V

    .line 680
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 681
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    move p1, v0

    .line 682
    goto :goto_0

    .line 675
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v4, :cond_2

    .line 676
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    goto :goto_1

    .line 684
    :cond_4
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v3, :cond_7

    if-ne p2, v4, :cond_7

    .line 685
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setTopFilterApplied()V

    .line 686
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    .line 696
    :cond_5
    :goto_2
    if-ne p2, v4, :cond_9

    .line 697
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    .line 698
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f020127

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 699
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v3, 0x7f0d010b

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f02014e

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 705
    :cond_6
    :goto_3
    iput p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    .line 706
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    if-nez v1, :cond_a

    .line 707
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p2, v1, :cond_a

    .line 708
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doEffectMenuSelected()V

    goto :goto_0

    .line 687
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v4, :cond_5

    if-ne p2, v3, :cond_5

    .line 688
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z

    .line 689
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    if-eqz v1, :cond_8

    .line 690
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v1, :cond_8

    .line 691
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 694
    :cond_8
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    goto :goto_2

    .line 700
    :cond_9
    if-ne p2, v3, :cond_6

    .line 701
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 702
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f020128

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 703
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v3, 0x7f0d010b

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f02014d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 712
    :cond_a
    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-nez v1, :cond_c

    :cond_b
    move v0, v2

    .line 713
    .local v0, select:Z
    :cond_c
    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$7;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$7;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    move p1, v0

    .line 720
    goto/16 :goto_0

    .line 713
    :cond_d
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public clearEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->clearImageButtonBounds()V

    .line 511
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setStateByEffectName(Ljava/lang/String;Z)V

    .line 513
    :cond_0
    return-void
.end method

.method public clearEffectsSelected()V
    .locals 6

    .prologue
    .line 516
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 517
    .local v0, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setStateByEffectName(Ljava/lang/String;Z)V

    .line 518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    .line 519
    .local v2, state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mEffectId:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->access$1700(Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 520
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 521
    check-cast v3, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->clearEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    goto :goto_0

    .line 524
    .end local v0           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;>;"
    .end local v2           #state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 525
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 527
    :cond_2
    return-void
.end method

.method public clickSave()V
    .locals 1

    .prologue
    .line 486
    const v0, 0x7f0d0133

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 487
    return-void
.end method

.method public doBegin(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v1, 0x7f0d0103

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->name()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    return-void
.end method

.method public doEffectMenuSelected()V
    .locals 4

    .prologue
    .line 639
    iget v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    .line 640
    .local v0, selectedId:I
    const-string v1, ""

    .line 641
    .local v1, text:Ljava/lang/String;
    const v2, 0x7f040058

    if-ne v0, v2, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 648
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v3, 0x7f0d0103

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    return-void

    .line 643
    :cond_1
    const v2, 0x7f04005b

    if-ne v0, v2, :cond_2

    .line 644
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 645
    :cond_2
    const v2, 0x7f04005c

    if-ne v0, v2, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public enterMarkedMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 395
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isInMarkedMode:Z

    if-nez v4, :cond_1

    .line 396
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isInMarkedMode:Z

    .line 397
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04005a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 398
    .local v2, effects:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 399
    .local v1, doodleAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, child:Landroid/view/View;
    const-string v4, "DoodleFilter"

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 401
    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 403
    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 404
    new-instance v3, Lcom/android/gallery3d/photoeditor/EffectsBar$5;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$5;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V

    .line 412
    .local v3, listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->begin(Landroid/view/View;Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;Z)V

    .line 415
    .end local v0           #child:Landroid/view/View;
    .end local v1           #doodleAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .end local v2           #effects:Landroid/view/ViewGroup;
    .end local v3           #listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    :cond_1
    return-void
.end method

.method public exit(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    const/4 v0, 0x0

    .line 461
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->clearSelected()V

    .line 463
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    .line 465
    const/4 v0, 0x1

    .line 475
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    if-eqz v1, :cond_2

    .line 468
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    goto :goto_0

    .line 471
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z

    move-result v0

    .line 472
    .local v0, exited:Z
    if-eqz p1, :cond_0

    .line 473
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getActiveEffectAction()Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->lastEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object v0
.end method

.method public getCurrentEffectId()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    return v0
.end method

.method public getSelectIdByEffectName(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    .line 595
    .local v0, state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->getEffectState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mEffectId:I
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->access$1700(Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;)I

    move-result v1

    .line 599
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public initialize(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;Z)V
    .locals 3
    .parameter "filterStack"
    .parameter "actionbar"
    .parameter "isMarkedMode"

    .prologue
    const v2, 0x7f020128

    .line 116
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 117
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    .line 118
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setDefaultValue()V

    .line 119
    const v0, 0x7f0d0139

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setIsMarkedMode(Z)V

    .line 122
    if-nez p3, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v1, 0x7f0d012e

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v1, 0x7f0d010a

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEffectsMenuLongClickListener()V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/FilterStack;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setOnToggleListener(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;)V

    .line 202
    :cond_0
    return-void
.end method

.method public isGalleryLoadSuccess()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mIsLoadEffectActionButton:Z

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->paused:Z

    .line 661
    return-void
.end method

.method public setArtisticButtonValid(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 728
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 729
    return-void
.end method

.method public setClickRunnable(ILjava/lang/Runnable;)V
    .locals 1
    .parameter "id"
    .parameter "r"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method public setEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->drawImageButtonBounds()V

    .line 504
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setStateByEffectName(Ljava/lang/String;Z)V

    .line 506
    :cond_0
    return-void
.end method

.method public setEffectsMenuLongClickListener()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setLongClickListener()V

    .line 531
    return-void
.end method

.method public setExposureButtonValid(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 732
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    .line 733
    return-void
.end method

.method public setIsOpenGallery(Z)V
    .locals 0
    .parameter "isOpenGallery"

    .prologue
    .line 736
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    .line 737
    return-void
.end method

.method public setPhotoSource(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->paused:Z

    if-nez v0, :cond_0

    .line 206
    invoke-static {p1}, Lcom/android/gallery3d/photoeditor/Photo;->create(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    .line 207
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mSourceBmp:Landroid/graphics/Bitmap;

    .line 208
    invoke-static {}, Lcom/android/gallery3d/photoeditor/filters/Filter;->releaseContext()V

    .line 209
    const v0, 0x7f040058

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->preProcessFilter(II)V

    .line 210
    const v0, 0x7f04005b

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->preProcessFilter(II)V

    .line 212
    invoke-static {}, Lcom/android/gallery3d/photoeditor/filters/Filter;->releaseContext()V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 215
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    .line 216
    return-void
.end method

.method public setStateByEffectName(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "isSelect"

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    .line 604
    .local v0, state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->setEffectState(Z)V

    .line 606
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_0
    return-void
.end method

.method public setTopFilterApplied()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->setTopFilterApplied()V

    .line 108
    return-void
.end method

.method public setViewEnabled(IZ)V
    .locals 1
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setViewEnabled(IZ)V

    .line 495
    return-void
.end method

.method public updateEffectLayout(Z)V
    .locals 10
    .parameter "isLandscapeMode"

    .prologue
    const v9, 0x7f04005b

    const v8, 0x7f02014e

    const v7, 0x7f02014d

    const v6, 0x7f020128

    const v5, 0x7f020127

    .line 535
    iget v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    const v4, 0x7f040058

    if-ne v3, v4, :cond_2

    .line 536
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    if-eqz v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d012e

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 538
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d012f

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 540
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d010a

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 541
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d010b

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 552
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v3, v9, :cond_5

    .line 553
    if-eqz p1, :cond_3

    .line 554
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 555
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 556
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 557
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 558
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 560
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 561
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 562
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v3, v9, :cond_0

    .line 544
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    if-eqz v3, :cond_0

    .line 545
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d012e

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 546
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d012f

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 548
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d010a

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 549
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d010b

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 567
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 568
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 569
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 570
    .restart local v2       #v:Landroid/view/View;
    if-eqz v2, :cond_4

    .line 571
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 572
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 573
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 574
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 575
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 582
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method public updateSave(Z)V
    .locals 2
    .parameter "canSave"

    .prologue
    .line 479
    const v0, 0x7f0d0134

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setViewEnabled(IZ)V

    .line 480
    const v0, 0x7f0d0133

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setViewEnabled(IZ)V

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 483
    return-void
.end method
