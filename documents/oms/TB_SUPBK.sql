/*
================================================================================
��ṹ����:TB_SUPBK
��ṹ����:��ʷ����̯λ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBK;
drop index AK_TB_SUPBK;
drop table TB_SUPBK;
create table TB_SUPBK  (
   SUPBK000             VARCHAR2(8)                     not null,  /*��������            */
   SUPBK001             VARCHAR2(30)                    not null,  /*ͼֽ���            */
   SUPBK002             INTEGER                         not null,  /*������            */
   SUPBK003             INTEGER                         not null,  /*�������            */
   SUPBK004             NUMBER(12,2)                    not null,  /*���Leftλ��        */
   SUPBK005             NUMBER(12,2)                    not null,  /*���Topλ��         */
   SUPBK006             NUMBER(12,2)                    not null,  /*������            */
   SUPBK007             NUMBER(12,2)                    not null,  /*����߶�            */
   SUPBK008             INTEGER                         not null,  /*Pen���             */
   SUPBK009             INTEGER                         not null,  /*Pen��ɫ             */
   SUPBK010             INTEGER                         not null,  /*PenStyle            */
   SUPBK011             INTEGER                         not null,  /*Brush��ɫ           */
   SUPBK012             INTEGER                         not null , /*BrushStyle          */
   SUPBK013             INTEGER                         not null,  /*Font��ɫ            */
   SUPBK014             VARCHAR2(30)                    not null,  /*Font����            */
   SUPBK015             INTEGER                         not null,  /*Font��С            */
   SUPBK016             VARCHAR2(100),                             /*FontStyle           */
   SUPBK017             INTEGER                         not null,  /*���ַ���            */
   SUPBK018             INTEGER                         not null,  /*ˮƽ���뷽ʽ        */
   SUPBK019             INTEGER                         not null,  /*��ֱ���뷽ʽ        */
   SUPBK020             VARCHAR2(1000),                            /*����                */
   SUPBK021             NUMBER(12,2)                    not null,  /*�ַ�X������߾�     */
   SUPBK022             NUMBER(12,2)                    not null,  /*�ַ�Y�����ϱ߾�     */
   SUPBK023             NUMBER(12,2)                    not null,  /*�ַ�X�����ұ߾�     */
   SUPBK024             NUMBER(12,2)                    not null,  /*�ַ�Y�����±߾�     */
   SUPBK025             INTEGER                         not null,  /*��������            */
   SUPBK026             INTEGER                         not null,  /*���ݱ���            */
   SUPBK027             VARCHAR2(40)                    not null,  /*��������            */
   SUPBK028             INTEGER                         not null,  /*�����ʾ���ݷ�ʽ    */
   SUPBK029             INTEGER                         not null,  /*��ʾHINT��ʽ        */
   SUPBK030             VARCHAR2(1000),                            /*�û������HINT      */
   SUPBK031             INTEGER                         not null,  /*�Ƿ���ô����ݿ�ȡ�������ɫ */
   SUPBK032             INTEGER                         not null,  /*�Ƿ���Ӱ            */
   SUPBK071             INTEGER,                                   /*����һ              */
   SUPBK072             INTEGER,                                   /*���ö�              */
   SUPBK073             INTEGER,                                   /*������              */
   SUPBK081             VARCHAR2(50),                              /*����һ              */
   SUPBK082             VARCHAR2(50),                              /*���ö�               */
   SUPBK083             VARCHAR2(50),                              /*������              */
   SUPBK090             VARCHAR2(200),                             /*��ע                */
   constraint PK_TB_SUPBK primary key (SUPBK000,SUPBK001,SUPBK002)
);
/*create unique index AK_TB_SUPBK on TB_SUPBK (SUPBK000,SUPBK001,SUPBK002);*/
create sequence SEQ_TB_SUPBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBK to public;
grant index  on TB_SUPBK to public;
grant update on TB_SUPBK to public; 
grant delete on TB_SUPBK to public;  
grant insert on TB_SUPBK to public; 
grant select on SEQ_TB_SUPBK to public;   
