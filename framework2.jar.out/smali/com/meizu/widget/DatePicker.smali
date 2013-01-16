.class public Lcom/meizu/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/DatePicker$1;,
        Lcom/meizu/widget/DatePicker$SavedState;,
        Lcom/meizu/widget/DatePicker$DateAdapter;,
        Lcom/meizu/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final NUMBER_OF_MONTHS:I = 0xc


# instance fields
.field private isLunar:Z

.field private mDay:I

.field private mDayPicker:Lcom/meizu/widget/ScrollTextView;

.field private mEndYear:I

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthPicker:Lcom/meizu/widget/ScrollTextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mMonths:[Ljava/lang/String;

.field private mOnDateChangedListener:Lcom/meizu/widget/DatePicker$OnDateChangedListener;

.field mOrder:Ljava/lang/String;

.field private mShortMonths:[Ljava/lang/String;

.field private mStartYear:I

.field private mYear:I

.field private mYearPicker:Lcom/meizu/widget/ScrollTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 186
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/widget/DatePicker;->isLunar:Z

    .line 82
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 188
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/meizu/widget/DatePicker;->setLayerType(ILandroid/graphics/Paint;)V

    .line 190
    sget-object v2, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 192
    .local v16, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/16 v3, 0x7b2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    .line 194
    const/4 v2, 0x1

    const/16 v3, 0x7f5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    .line 195
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DatePicker;->mContext:Landroid/content/Context;

    const v3, 0x1090046

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/meizu/widget/DatePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 199
    const v2, 0x10202bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 200
    .local v18, text:Landroid/widget/TextView;
    if-eqz v18, :cond_0

    .line 201
    const v2, 0x1040581

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :cond_0
    const v2, 0x10202c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18           #text:Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 205
    .restart local v18       #text:Landroid/widget/TextView;
    if-eqz v18, :cond_1

    .line 206
    const v2, 0x1040583

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :cond_1
    const v2, 0x10202c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .end local v18           #text:Landroid/widget/TextView;
    check-cast v18, Landroid/widget/TextView;

    .line 210
    .restart local v18       #text:Landroid/widget/TextView;
    if-eqz v18, :cond_2

    .line 211
    const v2, 0x1040582

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 216
    .local v17, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/DatePicker;->mYear:I

    .line 217
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/DatePicker;->mMonth:I

    .line 218
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/DatePicker;->mDay:I

    .line 219
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/widget/DatePicker$OnDateChangedListener;

    .line 221
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 223
    .local v6, max:I
    const v2, 0x10202c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/DatePicker;->mDayPicker:Lcom/meizu/widget/ScrollTextView;

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DatePicker;->mDayPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/widget/DatePicker$DateAdapter;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/widget/DatePicker;I)V

    const/high16 v4, -0x4080

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/DatePicker;->mDay:I

    add-int/lit8 v5, v5, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 227
    const v2, 0x10202bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/DatePicker;->mMonthPicker:Lcom/meizu/widget/ScrollTextView;

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/widget/DatePicker;->mMonthPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v8, Lcom/meizu/widget/DatePicker$DateAdapter;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/meizu/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/widget/DatePicker;I)V

    const/high16 v9, -0x4080

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/widget/DatePicker;->mMonth:I

    const/16 v11, 0xc

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/16 v14, 0xb

    const/4 v15, 0x1

    invoke-virtual/range {v7 .. v15}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 232
    const v2, 0x10202c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/DatePicker;->mYearPicker:Lcom/meizu/widget/ScrollTextView;

    .line 233
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    add-int/lit8 v2, v2, -0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    .line 234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/meizu/widget/DatePicker;->updateYearPicker()V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DatePicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 242
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DatePicker;->setEnabled(Z)V

    .line 244
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/DatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/DatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/meizu/widget/DatePicker;->getMonthDays()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/DatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/widget/DatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/widget/DatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/widget/DatePicker;)Lcom/meizu/widget/ScrollTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/DatePicker;->mDayPicker:Lcom/meizu/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/DatePicker;)Lcom/meizu/widget/DatePicker$OnDateChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/widget/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method private getMonthDays()I
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 568
    iget-boolean v1, p0, Lcom/meizu/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_0

    .line 569
    iget v1, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/meizu/util/LunarCalendar;->monthDays(II)I

    move-result v1

    .line 575
    :goto_0
    return v1

    .line 571
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 572
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 573
    iget v1, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 574
    const/4 v1, 0x2

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 575
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    goto :goto_0
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 358
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 359
    .local v0, currentLocale:Ljava/util/Locale;
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 384
    :goto_0
    return-object v2

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 364
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 365
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 366
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 380
    :cond_2
    iput-object v0, p0, Lcom/meizu/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 382
    .end local v1           #i:I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-object v2, p0, Lcom/meizu/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 20
    .parameter "months"

    .prologue
    .line 263
    const/16 v18, 0x0

    aget-object v18, p1, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .line 269
    .local v11, format:Ljava/text/DateFormat;
    :goto_0
    instance-of v0, v11, Ljava/text/SimpleDateFormat;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 270
    check-cast v11, Ljava/text/SimpleDateFormat;

    .end local v11           #format:Ljava/text/DateFormat;
    invoke-virtual {v11}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/DatePicker;->mOrder:Ljava/lang/String;

    .line 279
    :goto_1
    const v18, 0x10202bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 280
    .local v13, monthLayout:Landroid/widget/FrameLayout;
    const v18, 0x10202bf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 281
    .local v3, dayLayout:Landroid/widget/FrameLayout;
    const v18, 0x10202c3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 282
    .local v17, yearLayout:Landroid/widget/FrameLayout;
    const v18, 0x10202be

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 283
    .local v9, divider1:Landroid/widget/ImageView;
    const v18, 0x10202c2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 285
    .local v10, divider2:Landroid/widget/ImageView;
    const v18, 0x10202ba

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 286
    .local v15, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 288
    const/16 v16, 0x0

    .line 289
    .local v16, quoted:Z
    const/4 v4, 0x0

    .local v4, didDay:Z
    const/4 v7, 0x0

    .local v7, didMonth:Z
    const/4 v8, 0x0

    .local v8, didYear:Z
    const/4 v5, 0x0

    .local v5, didDiv1:Z
    const/4 v6, 0x0

    .line 291
    .local v6, didDiv2:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_a

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 294
    .local v2, c:C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 295
    if-nez v16, :cond_5

    const/16 v16, 0x1

    .line 298
    :cond_0
    :goto_3
    if-nez v16, :cond_2

    .line 299
    const/4 v14, 0x0

    .line 300
    .local v14, need_divider:Z
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    if-nez v4, :cond_6

    .line 301
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    const/4 v4, 0x1

    .line 303
    const/4 v14, 0x1

    .line 314
    :cond_1
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v14, :cond_2

    .line 315
    if-nez v5, :cond_9

    .line 316
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    const/4 v5, 0x1

    .line 291
    .end local v14           #need_divider:Z
    :cond_2
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 266
    .end local v2           #c:C
    .end local v3           #dayLayout:Landroid/widget/FrameLayout;
    .end local v4           #didDay:Z
    .end local v5           #didDiv1:Z
    .end local v6           #didDiv2:Z
    .end local v7           #didMonth:Z
    .end local v8           #didYear:Z
    .end local v9           #divider1:Landroid/widget/ImageView;
    .end local v10           #divider2:Landroid/widget/ImageView;
    .end local v12           #i:I
    .end local v13           #monthLayout:Landroid/widget/FrameLayout;
    .end local v15           #parent:Landroid/widget/LinearLayout;
    .end local v16           #quoted:Z
    .end local v17           #yearLayout:Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .restart local v11       #format:Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 273
    :cond_4
    new-instance v18, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/widget/DatePicker;->mOrder:Ljava/lang/String;

    goto/16 :goto_1

    .line 295
    .end local v11           #format:Ljava/text/DateFormat;
    .restart local v2       #c:C
    .restart local v3       #dayLayout:Landroid/widget/FrameLayout;
    .restart local v4       #didDay:Z
    .restart local v5       #didDiv1:Z
    .restart local v6       #didDiv2:Z
    .restart local v7       #didMonth:Z
    .restart local v8       #didYear:Z
    .restart local v9       #divider1:Landroid/widget/ImageView;
    .restart local v10       #divider2:Landroid/widget/ImageView;
    .restart local v12       #i:I
    .restart local v13       #monthLayout:Landroid/widget/FrameLayout;
    .restart local v15       #parent:Landroid/widget/LinearLayout;
    .restart local v16       #quoted:Z
    .restart local v17       #yearLayout:Landroid/widget/FrameLayout;
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 304
    .restart local v14       #need_divider:Z
    :cond_6
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-ne v2, v0, :cond_8

    :cond_7
    if-nez v7, :cond_8

    .line 305
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    const/4 v7, 0x1

    .line 307
    const/4 v14, 0x1

    goto :goto_4

    .line 308
    :cond_8
    const/16 v18, 0x79

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    if-nez v8, :cond_1

    .line 309
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    const/4 v8, 0x1

    .line 311
    const/4 v14, 0x1

    goto :goto_4

    .line 319
    :cond_9
    if-nez v6, :cond_2

    .line 320
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    const/4 v6, 0x1

    goto :goto_5

    .line 329
    .end local v2           #c:C
    .end local v14           #need_divider:Z
    :cond_a
    if-nez v7, :cond_b

    .line 330
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    :cond_b
    if-nez v4, :cond_c

    .line 333
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    :cond_c
    if-nez v8, :cond_d

    .line 336
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    :cond_d
    return-void
.end method

.method private updateYearPicker()V
    .locals 9

    .prologue
    const/4 v5, 0x5

    .line 532
    iget-object v0, p0, Lcom/meizu/widget/DatePicker;->mYearPicker:Lcom/meizu/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/widget/DatePicker$DateAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/widget/DatePicker;I)V

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    iget v6, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    iget v7, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v6, -0x5

    const/4 v8, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/widget/ScrollTextView;->setData(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 534
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 452
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILcom/meizu/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 483
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 484
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/widget/DatePicker;->updateDate(III)V

    .line 486
    :cond_1
    iput-object p4, p0, Lcom/meizu/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/widget/DatePicker$OnDateChangedListener;

    .line 487
    return-void
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/meizu/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 462
    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/DatePicker$SavedState;

    .line 463
    .local v0, ss:Lcom/meizu/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 464
    invoke-virtual {v0}, Lcom/meizu/widget/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    .line 465
    invoke-virtual {v0}, Lcom/meizu/widget/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    .line 466
    invoke-virtual {v0}, Lcom/meizu/widget/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    .line 467
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 456
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 457
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/widget/DatePicker$SavedState;

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    iget v4, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/meizu/widget/DatePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 504
    if-nez p1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, months:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/meizu/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 517
    .local v0, format:Ljava/text/DateFormat;
    :goto_1
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_3

    .line 518
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0           #format:Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, order:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/meizu/widget/DatePicker;->mOrder:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    iput-object v1, p0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 528
    iget-object v3, p0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/meizu/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    goto :goto_0

    .line 514
    .end local v2           #order:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #format:Ljava/text/DateFormat;
    goto :goto_1

    .line 520
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .restart local v2       #order:Ljava/lang/String;
    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/meizu/widget/DatePicker;->mDayPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollTextView;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/meizu/widget/DatePicker;->mMonthPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollTextView;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/meizu/widget/DatePicker;->mYearPicker:Lcom/meizu/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/ScrollTextView;->setEnabled(Z)V

    .line 252
    return-void
.end method

.method public setLunar(Z)V
    .locals 3
    .parameter "isLunar"

    .prologue
    .line 559
    iput-boolean p1, p0, Lcom/meizu/widget/DatePicker;->isLunar:Z

    .line 560
    iget v0, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    iget v1, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/DatePicker;->updateDate(III)V

    .line 561
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3
    .parameter "maxDate"

    .prologue
    .line 537
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 538
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 539
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 540
    .local v1, newYear:I
    iget v2, p0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    if-le v1, v2, :cond_0

    .line 541
    iput v1, p0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    .line 542
    iget v2, p0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    .line 543
    invoke-direct {p0}, Lcom/meizu/widget/DatePicker;->updateYearPicker()V

    .line 545
    :cond_0
    return-void
.end method

.method public setMinDate(J)V
    .locals 3
    .parameter "minDate"

    .prologue
    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 549
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 550
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 551
    .local v1, newYear:I
    iget v2, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    if-eq v1, v2, :cond_0

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mEndYear:I

    if-ge v1, v2, :cond_0

    .line 552
    iput v1, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    .line 553
    iget v2, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    .line 554
    invoke-direct {p0}, Lcom/meizu/widget/DatePicker;->updateYearPicker()V

    .line 556
    :cond_0
    return-void
.end method

.method public updateDate(III)V
    .locals 4
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 341
    iput p1, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    .line 342
    iput p2, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    .line 343
    iput p3, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/meizu/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/meizu/widget/DatePicker;->mYearPicker:Lcom/meizu/widget/ScrollTextView;

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/widget/DatePicker;->mStartYear:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 348
    iget-object v1, p0, Lcom/meizu/widget/DatePicker;->mMonthPicker:Lcom/meizu/widget/ScrollTextView;

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mMonth:I

    invoke-virtual {v1, v2}, Lcom/meizu/widget/ScrollTextView;->refreshCurrent(I)V

    .line 350
    invoke-direct {p0}, Lcom/meizu/widget/DatePicker;->getMonthDays()I

    move-result v0

    .line 352
    .local v0, max:I
    iget-object v1, p0, Lcom/meizu/widget/DatePicker;->mDayPicker:Lcom/meizu/widget/ScrollTextView;

    iget v2, p0, Lcom/meizu/widget/DatePicker;->mDay:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/meizu/widget/ScrollTextView;->refreshCountAndCurrent(II)V

    .line 354
    iget-object v1, p0, Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/meizu/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 355
    return-void
.end method
