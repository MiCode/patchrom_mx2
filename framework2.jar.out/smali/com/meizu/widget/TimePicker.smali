.class public Lcom/meizu/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/TimePicker$1;,
        Lcom/meizu/widget/TimePicker$SavedState;,
        Lcom/meizu/widget/TimePicker$TimeAdapter;,
        Lcom/meizu/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mForce24HourView:Z

.field private mHourPicker:Lcom/meizu/widget/ScrollTextView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:I

.field private mMinutePicker:Lcom/meizu/widget/ScrollTextView;

.field private mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

.field private final mPmText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v5, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 56
    iput v5, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 57
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 444
    iput-boolean v5, p0, Lcom/meizu/widget/TimePicker;->mForce24HourView:Z

    .line 171
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/meizu/widget/TimePicker;->setLayerType(ILandroid/graphics/Paint;)V

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 175
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 176
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 177
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 186
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, dfsAmPm:[Ljava/lang/String;
    aget-object v4, v2, v5

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 188
    aget-object v4, v2, v6

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    iput v5, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    .line 192
    iget v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    if-lt v4, v7, :cond_0

    .line 193
    iget v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 194
    iput v6, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/TimePicker;->inflateLayout()V

    .line 198
    return-void

    .line 178
    .end local v1           #dfs:Ljava/text/DateFormatSymbols;
    .end local v2           #dfsAmPm:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 179
    .local v3, e:Ljava/lang/Exception;
    iput v7, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 180
    const/16 v4, 0x1e

    iput v4, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 181
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/widget/TimePicker;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$402(Lcom/meizu/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$502(Lcom/meizu/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/widget/TimePicker;)Lcom/meizu/widget/TimePicker$OnTimeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

    return-object v0
.end method

.method private inflateLayout()V
    .locals 10

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->removeAllViews()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mContext:Landroid/content/Context;

    const v1, 0x10900a3

    invoke-static {v0, v1, p0}, Lcom/meizu/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 208
    const v0, 0x10202ba

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 209
    .local v9, text:Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 210
    const v0, 0x104058d

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :cond_1
    const v0, 0x10202be

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #text:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 214
    .restart local v9       #text:Landroid/widget/TextView;
    if-eqz v9, :cond_2

    .line 215
    const v0, 0x104058e

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 218
    :cond_2
    const v0, 0x10202b9

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    .line 219
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0x18

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 221
    const v0, 0x10202bd

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    .line 222
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->setEnabled(Z)V

    .line 251
    :cond_3
    return-void

    .line 226
    .end local v9           #text:Landroid/widget/TextView;
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mContext:Landroid/content/Context;

    const v1, 0x10900a4

    invoke-static {v0, v1, p0}, Lcom/meizu/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 228
    const v0, 0x10202ba

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 229
    .restart local v9       #text:Landroid/widget/TextView;
    if-eqz v9, :cond_5

    .line 230
    const v0, 0x104058d

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 233
    :cond_5
    const v0, 0x10202be

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #text:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 234
    .restart local v9       #text:Landroid/widget/TextView;
    if-eqz v9, :cond_6

    .line 235
    const v0, 0x104058e

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 238
    :cond_6
    const v0, 0x10202b9

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    .line 239
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0xc

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 241
    const v0, 0x10202bd

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    .line 242
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 244
    const v0, 0x10202c1

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    .line 245
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/widget/TimePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public force24HourView(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/meizu/widget/TimePicker;->mForce24HourView:Z

    .line 452
    if-eqz p1, :cond_0

    .line 453
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 455
    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/widget/ScrollTextView;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 365
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    .line 367
    :cond_0
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    if-nez v0, :cond_1

    .line 368
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_1
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 345
    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/TimePicker$SavedState;

    .line 346
    .local v0, ss:Lcom/meizu/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 347
    #getter for: Lcom/meizu/widget/TimePicker$SavedState;->mHour:I
    invoke-static {v0}, Lcom/meizu/widget/TimePicker$SavedState;->access$900(Lcom/meizu/widget/TimePicker$SavedState;)I

    move-result v1

    #getter for: Lcom/meizu/widget/TimePicker$SavedState;->mMinute:I
    invoke-static {v0}, Lcom/meizu/widget/TimePicker$SavedState;->access$1000(Lcom/meizu/widget/TimePicker$SavedState;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    .line 348
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 339
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 340
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/meizu/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/meizu/widget/TimePicker$1;)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 424
    if-nez p1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 430
    .local v1, is24Hour:Z
    :try_start_0
    iget-boolean v2, p0, Lcom/meizu/widget/TimePicker;->mForce24HourView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 431
    const/4 v1, 0x1

    .line 439
    :goto_1
    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 440
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 433
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .parameter "currentHour"

    .prologue
    .line 396
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "currentMinute"

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 417
    .local v0, hour:I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    .line 418
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollTextView;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollTextView;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollTextView;->setEnabled(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "is24HourView"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 411
    .local v0, hour:I
    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/TimePicker;->update(IIZ)V

    .line 412
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/meizu/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/meizu/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/widget/TimePicker$OnTimeChangedListener;

    .line 358
    return-void
.end method

.method public update(IIZ)V
    .locals 2
    .parameter "hour"
    .parameter "min"
    .parameter "is24hour"

    .prologue
    .line 254
    if-eqz p3, :cond_3

    .line 255
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 264
    :cond_0
    :goto_0
    iput p2, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    .line 266
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p3, v0, :cond_1

    .line 267
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 268
    invoke-direct {p0}, Lcom/meizu/widget/TimePicker;->inflateLayout()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mHourPicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 272
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mMinutePicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 273
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/meizu/widget/TimePicker;->mAmPmPicker:Lcom/meizu/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 276
    :cond_2
    return-void

    .line 257
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    .line 258
    iput p1, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 259
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 260
    iget v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Lcom/meizu/widget/TimePicker;->mCurrentHour:I

    .line 261
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/TimePicker;->mIsAm:I

    goto :goto_0
.end method
