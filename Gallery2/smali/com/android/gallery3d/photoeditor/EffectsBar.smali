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

.field private mSourceBmp:Landroid/graphics/Bitmap;

.field private volatile paused:Z

.field private preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field private source:Lcom/android/gallery3d/photoeditor/Photo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
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
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isInMarkedMode:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    .line 102
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    .line 103
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
    .line 260
    const/4 v6, 0x1

    .line 261
    .local v6, replaceable:Z
    const/4 v0, 0x0

    .line 262
    .local v0, begin:I
    const-string v9, ""

    .line 263
    .local v9, text:Ljava/lang/String;
    const v10, 0x7f040053

    if-ne p1, v10, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a010c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    const/4 v6, 0x0

    .line 266
    const/4 v0, 0x0

    .line 273
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setVisibility(I)V

    .line 274
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v11, 0x7f0d00ff

    invoke-virtual {v10, v11}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040058

    const/4 v12, 0x0

    invoke-virtual {v10, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 277
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {v10, p1}, Landroid/view/View;->setId(I)V

    .line 278
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const v11, 0x7f0d0115

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 279
    .local v7, scrollView:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 280
    .local v3, effects:Landroid/view/ViewGroup;
    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    .line 281
    const/4 v5, 0x0

    .line 282
    .local v5, offsetX:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_5

    .line 283
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 284
    .local v2, effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getSelectIdByEffectName(Ljava/lang/String;)I

    move-result v8

    .line 285
    .local v8, selectId:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_1

    .line 286
    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->drawImageButtonBounds()V

    .line 287
    mul-int/lit16 v5, v8, 0xb0

    .line 289
    :cond_1
    invoke-virtual {v2, v6}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->setReplaceable(Z)V

    .line 290
    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 291
    const v10, 0x7f040057

    if-eq p1, v10, :cond_2

    .line 292
    const v10, 0x7f0d0114

    invoke-virtual {v2, v10}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->dst:[Landroid/graphics/Bitmap;

    add-int v12, v4, v0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 267
    .end local v2           #effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .end local v3           #effects:Landroid/view/ViewGroup;
    .end local v4           #i:I
    .end local v5           #offsetX:I
    .end local v7           #scrollView:Landroid/view/ViewGroup;
    .end local v8           #selectId:I
    :cond_3
    const v10, 0x7f040056

    if-ne p1, v10, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a010d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 269
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 270
    :cond_4
    const v10, 0x7f040057

    if-ne p1, v10, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a010e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 295
    .restart local v3       #effects:Landroid/view/ViewGroup;
    .restart local v4       #i:I
    .restart local v5       #offsetX:I
    .restart local v7       #scrollView:Landroid/view/ViewGroup;
    :cond_5
    const v10, 0x7f040053

    if-ne p1, v10, :cond_6

    .line 296
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04005c

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, child:Landroid/view/View;
    const v10, 0x7f0d0114

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 298
    const v10, 0x7f0d0114

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    new-instance v11, Lcom/android/gallery3d/photoeditor/EffectsBar$2;

    invoke-direct {v11, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$2;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v10, 0x7f0d0114

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mSourceBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 321
    .end local v1           #child:Landroid/view/View;
    :cond_6
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 322
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 323
    invoke-direct {p0, v7, v5}, Lcom/android/gallery3d/photoeditor/EffectsBar;->scrollToSelectChild(Landroid/view/ViewGroup;I)V

    .line 324
    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/gallery3d/photoeditor/EffectsBar;->addView(Landroid/view/View;I)V

    .line 325
    return-void
.end method

.method private exitActiveEffect(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$6;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$6;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->end(Ljava/lang/Runnable;)V

    .line 441
    const/4 v0, 0x1

    .line 443
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

    .line 410
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const v3, 0x7f0d0115

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 414
    .local v0, scrollView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 416
    .end local v0           #scrollView:Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 417
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 418
    const/4 v1, 0x1

    .line 420
    :cond_1
    return v1
.end method

.method private getInstanceFromName(Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/filters/Filter;
    .locals 6
    .parameter "name"

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 214
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

    .line 222
    :goto_0
    return-object v2

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, e:Ljava/lang/InstantiationException;
    const-string v3, "TAG"

    const-string v4, "Instantiation exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "TAG"

    const-string v4, "class access"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 220
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

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v2, v3

    .line 227
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 228
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v1

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/gallery3d/photoeditor/Photo;->create(II)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v4

    .line 229
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 230
    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v1

    .line 231
    if-nez p2, :cond_2

    .line 232
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    new-instance v6, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, p0, v7, v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;ILjava/lang/String;Z)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getInstanceFromName(Ljava/lang/String;)Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v5

    .line 236
    if-eqz v5, :cond_1

    .line 237
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/photoeditor/Photo;->matchDimension(Lcom/android/gallery3d/photoeditor/Photo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 238
    const-class v6, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    const-string v6, "CommonEffectBrightnessFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    const v6, 0x3f333333

    invoke-virtual {v1, v6, v8, v8, v8}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    .line 249
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->setContext(Landroid/content/Context;)V

    .line 250
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v5, v1, v4}, Lcom/android/gallery3d/photoeditor/filters/Filter;->process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V

    .line 251
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->dst:[Landroid/graphics/Bitmap;

    add-int v5, v2, p2

    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->save()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v1, v5

    .line 252
    invoke-virtual {v4}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 227
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 234
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    new-instance v6, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    invoke-direct {v6, p0, v2, v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;ILjava/lang/String;Z)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 241
    :cond_3
    const-string v6, "CommonEffectContrastFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v8, v8}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    goto :goto_2

    .line 243
    :cond_4
    const-string v6, "CommonEffectColorTemperatureFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 244
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    invoke-virtual {v1, v8, v8, v9, v8}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    goto :goto_2

    .line 245
    :cond_5
    const-string v6, "CommonEffectSaturationFilter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    const/high16 v6, 0x3f80

    invoke-virtual {v1, v8, v8, v8, v6}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setAllParameterValue(FFFF)V

    goto :goto_2

    .line 256
    :cond_6
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setDefaultValue()V

    .line 257
    return-void
.end method

.method private scrollToSelectChild(Landroid/view/ViewGroup;I)V
    .locals 4
    .parameter "scrollview"
    .parameter "offset"

    .prologue
    .line 332
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$3;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Landroid/view/ViewGroup;I)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void
.end method

.method private setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 340
    const v0, 0x7f0d0114

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$4;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$4;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-void
.end method


# virtual methods
.method public changeEffectsMenu(ZI)Z
    .locals 6
    .parameter "isSelected"
    .parameter "effectsId"

    .prologue
    const v5, 0x7f0d0106

    const v4, 0x7f040056

    const v3, 0x7f040053

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 675
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    if-nez v1, :cond_0

    move p1, v0

    .line 728
    .end local p1
    :goto_0
    return p1

    .line 678
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    move p1, v0

    .line 679
    goto :goto_0

    .line 681
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v3, :cond_3

    .line 682
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    .line 686
    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 687
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->clickBack()V

    .line 688
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 689
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    move p1, v0

    .line 690
    goto :goto_0

    .line 683
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v4, :cond_2

    .line 684
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    goto :goto_1

    .line 692
    :cond_4
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v3, :cond_7

    if-ne p2, v4, :cond_7

    .line 693
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setTopFilterApplied()V

    .line 694
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    .line 704
    :cond_5
    :goto_2
    if-ne p2, v4, :cond_9

    .line 705
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    .line 706
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f02012f

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 707
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v3, 0x7f0d0107

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f020154

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 713
    :cond_6
    :goto_3
    iput p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    .line 714
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;

    if-nez v1, :cond_a

    .line 715
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p2, v1, :cond_a

    .line 716
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doEffectMenuSelected()V

    goto :goto_0

    .line 695
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v1, v4, :cond_5

    if-ne p2, v3, :cond_5

    .line 696
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z

    .line 697
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    if-eqz v1, :cond_8

    .line 698
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v1, :cond_8

    .line 699
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 702
    :cond_8
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z

    goto :goto_2

    .line 708
    :cond_9
    if-ne p2, v3, :cond_6

    .line 709
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 710
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f020130

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 711
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v3, 0x7f0d0107

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f020153

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 720
    :cond_a
    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-nez v1, :cond_c

    :cond_b
    move v0, v2

    .line 721
    .local v0, select:Z
    :cond_c
    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$7;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$7;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    move p1, v0

    .line 728
    goto/16 :goto_0

    .line 721
    :cond_d
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public clearEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 521
    if-eqz p1, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->clearImageButtonBounds()V

    .line 523
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setStateByEffectName(Ljava/lang/String;Z)V

    .line 525
    :cond_0
    return-void
.end method

.method public clearEffectsSelected()V
    .locals 6

    .prologue
    .line 528
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

    .line 529
    .local v0, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setStateByEffectName(Ljava/lang/String;Z)V

    .line 530
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    .line 531
    .local v2, state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mEffectId:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->access$1700(Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 532
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 533
    check-cast v3, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->clearEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    goto :goto_0

    .line 536
    .end local v0           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;>;"
    .end local v2           #state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 537
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 539
    :cond_2
    return-void
.end method

.method public clickSave()V
    .locals 1

    .prologue
    .line 498
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 499
    return-void
.end method

.method public doBegin(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v1, 0x7f0d00ff

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->name()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    return-void
.end method

.method public doEffectMenuSelected()V
    .locals 4

    .prologue
    .line 647
    iget v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    .line 648
    .local v0, selectedId:I
    const-string v1, ""

    .line 649
    .local v1, text:Ljava/lang/String;
    const v2, 0x7f040053

    if-ne v0, v2, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 656
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v3, 0x7f0d00ff

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    return-void

    .line 651
    :cond_1
    const v2, 0x7f040056

    if-ne v0, v2, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 653
    :cond_2
    const v2, 0x7f040057

    if-ne v0, v2, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public enterMarkedMode()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 387
    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isInMarkedMode:Z

    if-nez v4, :cond_1

    .line 388
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isInMarkedMode:Z

    .line 389
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040055

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 390
    .local v2, effects:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 391
    .local v1, doodleAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 392
    .local v0, child:Landroid/view/View;
    const-string v4, "DoodleFilter"

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 393
    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 395
    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 396
    new-instance v3, Lcom/android/gallery3d/photoeditor/EffectsBar$5;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$5;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V

    .line 404
    .local v3, listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->begin(Landroid/view/View;Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;Z)V

    .line 407
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

    .line 453
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->clearSelected()V

    .line 455
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    .line 457
    const/4 v0, 0x1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    if-eqz v1, :cond_2

    .line 460
    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z

    goto :goto_0

    .line 463
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z

    move-result v0

    .line 464
    .local v0, exited:Z
    if-eqz p1, :cond_0

    .line 465
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getActiveEffectAction()Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->lastEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object v0
.end method

.method public getCurrentEffectId()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    return v0
.end method

.method public getSelectIdByEffectName(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    .line 603
    .local v0, state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->getEffectState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mEffectId:I
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->access$1700(Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;)I

    move-result v1

    .line 607
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
    const v2, 0x7f020130

    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 111
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    .line 112
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setDefaultValue()V

    .line 113
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setIsMarkedMode(Z)V

    .line 116
    if-nez p3, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v1, 0x7f0d0119

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/FilterStack;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setOnToggleListener(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;)V

    .line 195
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->paused:Z

    .line 669
    return-void
.end method

.method public setArtisticButtonValid(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 736
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    .line 737
    return-void
.end method

.method public setClickRunnable(ILjava/lang/Runnable;)V
    .locals 1
    .parameter "id"
    .parameter "r"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public setEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->drawImageButtonBounds()V

    .line 516
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getEffectName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setStateByEffectName(Ljava/lang/String;Z)V

    .line 518
    :cond_0
    return-void
.end method

.method public setExposureButtonValid(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 740
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    .line 741
    return-void
.end method

.method public setIsOpenGallery(Z)V
    .locals 0
    .parameter "isOpenGallery"

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    .line 745
    return-void
.end method

.method public setPhotoSource(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->paused:Z

    if-nez v0, :cond_0

    .line 199
    invoke-static {p1}, Lcom/android/gallery3d/photoeditor/Photo;->create(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    .line 200
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mSourceBmp:Landroid/graphics/Bitmap;

    .line 201
    invoke-static {}, Lcom/android/gallery3d/photoeditor/filters/Filter;->releaseContext()V

    .line 202
    const v0, 0x7f040053

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->preProcessFilter(II)V

    .line 203
    const v0, 0x7f040056

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->preProcessFilter(II)V

    .line 205
    invoke-static {}, Lcom/android/gallery3d/photoeditor/filters/Filter;->releaseContext()V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 208
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z

    .line 209
    return-void
.end method

.method public setStateByEffectName(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "isSelect"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;

    .line 612
    .local v0, state:Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->setEffectState(Z)V

    .line 614
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->mEffectState:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_0
    return-void
.end method

.method public setTopFilterApplied()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->setTopFilterApplied()V

    .line 107
    return-void
.end method

.method public setViewEnabled(IZ)V
    .locals 1
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setViewEnabled(IZ)V

    .line 507
    return-void
.end method

.method public showSaveOrApply(Z)V
    .locals 0
    .parameter "showSave"

    .prologue
    .line 480
    return-void
.end method

.method public updateEffectLayout(Z)V
    .locals 10
    .parameter "isLandscapeMode"

    .prologue
    const v9, 0x7f040056

    const v8, 0x7f020154

    const v7, 0x7f020153

    const v6, 0x7f020130

    const v5, 0x7f02012f

    .line 543
    iget v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    const v4, 0x7f040053

    if-ne v3, v4, :cond_2

    .line 544
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z

    if-eqz v3, :cond_0

    .line 545
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d0119

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 546
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d011a

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 548
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d0106

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 549
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d0107

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 560
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v3, v9, :cond_5

    .line 561
    if-eqz p1, :cond_3

    .line 562
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 563
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 564
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 565
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 566
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 568
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 569
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 570
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 551
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I

    if-ne v3, v9, :cond_0

    .line 552
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z

    if-eqz v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d0119

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 554
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    const v4, 0x7f0d011a

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 556
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d0106

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 557
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v4, 0x7f0d0107

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 575
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 576
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 577
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffects:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 578
    .restart local v2       #v:Landroid/view/View;
    if-eqz v2, :cond_4

    .line 579
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 580
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 581
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09014a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 582
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 583
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 590
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method public updateSave(Z)V
    .locals 4
    .parameter "canSave"

    .prologue
    const/4 v3, 0x1

    .line 483
    const v1, 0x7f0d011e

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setViewEnabled(IZ)V

    .line 484
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    const v2, 0x7f0d0109

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 485
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->getTopFilter()Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v0

    .line 486
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/Filter;
    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->showSaveOrApply(Z)V

    .line 495
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/Filter;->isApplied()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->showSaveOrApply(Z)V

    goto :goto_0

    .line 492
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->showSaveOrApply(Z)V

    goto :goto_0
.end method
