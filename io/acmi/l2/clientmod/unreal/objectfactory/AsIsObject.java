/*
 * Copyright (c) 2014 acmi
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package acmi.l2.clientmod.unreal.objectfactory;

import acmi.l2.clientmod.io.DataInput;
import acmi.l2.clientmod.io.DataOutput;
import acmi.l2.clientmod.io.UnrealPackageReadOnly;
import acmi.l2.clientmod.unreal.classloader.PropertiesUtil;

import java.io.IOException;

public class AsIsObject extends acmi.l2.clientmod.unreal.core.Object {
    private byte[] body;

    public AsIsObject(DataInput input, UnrealPackageReadOnly.ExportEntry entry, PropertiesUtil propertiesUtil) throws IOException {
        super(input, entry, propertiesUtil);

        body = new byte[entry.getOffset() + entry.getSize() - input.getPosition()];
        input.readFully(body);
    }

    @Override
    public void writeTo(DataOutput output, PropertiesUtil propertiesUtil) throws IOException {
        super.writeTo(output, propertiesUtil);

        output.write(body);
    }

    public byte[] getBody() {
        return body;
    }

    public boolean isEmptyBody() {
        return body.length == 0;
    }
}
