android-studio-live-templates
====

live templates for android studio

## Install

### For AndroidStudio2.0 on Mac OSX
```source install-mac.sh```

### For AndroidStudio2.0 on Linux
```source install-linux.sh```

### In Other Cases
```ln -s ${PWD}/gooooloo.xml [pathToYourAndroidStudioLiveTemplateFolder]/gooooloo.xml```

you can check path to your Android Studio live template folder from [here](https://www.jetbrains.com/help/idea/2016.1/live-templates.html?origin=old_help).

Remember to restart your Android Studio.

## Live Templates List

- ifemr: if TextUtils.isEmpty(**) return;

```if (TextUtils.isEmpty($VAR$)) { return $END$; }```

- rom: add a Runnable in main looper Handler

```new android.os.Handler(android.os.Looper.getMainLooper()).post(new Runnable() {
    @Override
    public void run() {
        $END$
    }
});```

- ifnt: if null throw IllegalArgumentException;

```if ($VAR$ == null) { throw new IllegalArgumentException("$VAR$ == null"); }```

- ats: add JUnit4 Test Case with templates

```@org.junit.Test 
public void test$method$_$scenario$_Should$result$() throws Exception {
    $END$
}```

- orn: or **** == null

``` || $VAR$ == null```

## Inspiration
This project is inspired by this [post](https://lachdrache.com/2012/11/18/sharing-intellij-idea-live-templates/).
## License
The MIT License (MIT)

Copyright (c) 2016 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
