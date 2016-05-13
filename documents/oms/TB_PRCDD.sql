/*
================================================================================
��ṹ����:TB_PRCDD
��ṹ����:���ʵ������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCDD;
drop index AK_TB_PRCDD;
drop table TB_PRCDD;
create table TB_PRCDD  (
   PRCDD_ID             INTEGER                               not null,        /*������ϸID        */    
   PRCDD001             INTEGER                               not null,        /*���ʵ�����ID      */
   PRCDD002             INTEGER                               not null,        /*��Դ����ID        */
   PRCDD003             VARCHAR2(30)                          not null,        /*����/�˵���       */
   PRCDD004             INTEGER                               not null,        /*��Դ��ϸID        */
   PRCDD005             INTEGER                               not null,        /*��Ʒ����          */
   PRCDD006             INTEGER,                                               /*ά��1             */
   PRCDD007             INTEGER,                                               /*ά��2             */
   PRCDD008             INTEGER,                                               /*ά��3             */
   PRCDD009             INTEGER,                                               /*ά��4             */
   PRCDD010             INTEGER,                                               /*ά��5             */
   PRCDD011             INTEGER                               not null,        /*�ֿ�              */
   PRCDD012             INTEGER                               not null,        /*��λ              */
   PRCDD013             INTEGER                               not null,        /*��λ              */
   PRCDD014             NUMBER(12,2)                          not null,        /*��λ������        */
   PRCDD015             NUMBER(18,3)                          not null,        /*ԭ��������        */
   PRCDD016             NUMBER(18,3)                          not null,        /*���ε�������      */
   PRCDD017             NUMBER(12,2)                          not null,        /*���۵���          */
   PRCDD018             NUMBER(12,2)                          not null,        /*���۽��          */
   PRCDD019             NUMBER(12,2)                          not null,        /*ԭ����            */
   PRCDD020             NUMBER(12,2)                                           /*�¿���            */       
   PRCDD021             NUMBER(12,2)                          not null,        /*ԭ���۳ɱ�        */
   PRCDD022             NUMBER(12,2)                          not null,        /*�����۳ɱ�        */
   PRCDD023             NUMBER(12,2)                          not null,        /*�����ɱ���        */
   PRCDD024             VARCHAR2(30),                                          /*����Ӧ���ݹ�����  */
   PRCDD025             VARCHAR2(30),                                          /*����Ӧ���ݹ�����  */
   PRCDD026             NUMBER(12,2),                                          /*�ѽ�����          */
   PRCDD027             VARCHAR2(255),                                         /*��ע              */
   PRCDD028             INTEGER                               not null,        /*��Ӧ��            */
   CREATE_USER          VARCHAR2(12),                                          /*������Ա         */
   USER_GROUP           VARCHAR2(12),                                          /*������Ա����     */                               
   CREATE_DATE          DATE,                                                  /*��������         */
   MODIFIER             VARCHAR2(12),                                          /*�޸���Ա         */
   MODI_DATE            DATE,                                                  /*�޸�����         */
   FLAG                 NUMBER(1),                                             /*����״̬         */
   constraint PK_TB_PRCDD primary key (PRCDD_ID)
);
create unique index AK_TB_PRCDD on TB_PRCDD (PRCDD_ID,PRCDD002,PRCDD005);
create sequence SEQ_TB_PRCDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDD to public;
grant index  on TB_PRCDD to public;
grant update on TB_PRCDD to public; 
grant delete on TB_PRCDD to public;  
grant insert on TB_PRCDD to public; 
grant select on SEQ_TB_PRCDD to public;   