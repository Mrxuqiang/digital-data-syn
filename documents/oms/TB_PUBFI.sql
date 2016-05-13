/*
================================================================================
��ṹ����:TB_PUBFI
��ṹ����:ͼ�α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFI;
drop index AK_TB_PUBFI;
drop table TB_PUBFI;
create table TB_PUBFI  (
   PUBFI_ID             INTEGER				  NOT NULL,   /*ͼ��ID                                                                 */
   PUBFI001             INTEGER				  NOT NULL,   /*����id                                                           */
   PUBFI002             INTEGER				  NOT NULL,   /*���                                                             */
   PUBFI003             INTEGER				  NOT NULL,   /*ͼ������                                                         */
   PUBFI004             NUMBER(10,2),                                 /*ͼ�ξ���λ��                                                     */
   PUBFI005             NUMBER(10,2),                                 /*ͼ�ξඥλ��                                                     */
   PUBFI006             NUMBER(10,2),                                 /*ͼ�ο��                                                         */
   PUBFI007             NUMBER(10,2),                                 /*ͼ�θ߶�                                                         */
   PUBFI008             INTEGER,                                      /*PEN��                                                            */
   PUBFI009             INTEGER,                                      /*PEN��ɫ                                                          */
   PUBFI010             INTEGER,                                      /*PEN��ʽ                                                          */
   PUBFI011             INTEGER,                                      /*BRUSH��ɫ                                                        */
   PUBFI012             INTEGER,                                      /*BRUSH��ʽ                                                        */
   PUBFI013             INTEGER,                                      /*������ɫ                                                         */
   PUBFI014             VARCHAR2(30),                                 /*��������                                                         */
   PUBFI015             INTEGER,                                      /*�����С                                                         */
   PUBFI016             VARCHAR2(100),                                /*������ʽ                                                         */
   PUBFI017             INTEGER,                                      /*���ַ���                                                         */
   PUBFI018             INTEGER,                                      /*ˮƽ���뷽ʽ                                                     */
   PUBFI019             INTEGER,                                      /*��ֱ���뷽ʽ                                                     */
   PUBFI020             VARCHAR2(1000),                               /*��������                                                         */
   PUBFI021             NUMBER(10,2),                                 /*������߾�                                                       */
   PUBFI022             NUMBER(10,2),                                 /*�����ϱ߾�                                                       */
   PUBFI023             NUMBER(10,2),                                 /*�����ұ߾�                                                       */
   PUBFI024             NUMBER(10,2),                                 /*�����±߾�                                                       */
   PUBFI025             INTEGER,				      /*�Ƿ���Ӱ                                                         */
   PUBFI026             INTEGER,                                      /*�Ƿ��ӡ                                                         */
   PUBFI027             INTEGER,                                      /*���״�����Ƿ��ӡ                                               */
   PUBFI028             INTEGER,                                      /*�״�����Ƿ��ӡ                                                 */
   PUBFI029             VARCHAR2(10),                                 /*��ԪID�������ҳ�ƻ��ܼ�ʱ����ű��ID��                         */
   PUBFI030             INTEGER,                                      /*ͼƬ��ŷ�ʽ 0������ݿ� 1���Ŀ¼                               */
   PUBFI031             VARCHAR2(255),                                /*ͼƬ���·��                                                     */
   PUBFI032             VARCHAR2(10),                                 /*ͼƬ����                                                         */
   PUBFI033             INTEGER,                                      /*�����ʽ���ϼ����͡�ҳ���ӡ�������ͣ�                           */
   PUBFI034             INTEGER,                                      /*������ת��ʽ���Ƿ�������һҳ��ӡ(�ϼ�)��ҳ�������ģ�壩       */
   PUBFI035             INTEGER,                                      /*����������ʾ��ʽ���Ƿ��д(�ϼ�)����ǰҳ��������ʽ��             */
   PUBFI036             INTEGER  default 0,                           /*��λ���� 0������ҳ�棻1���Ա�񶥲���Ϊ���գ�2���Ա��ײ������� */
   PUBFI037             INTEGER  default -1,                          /*�ο��ı���                                                     */
   PUBFI038             NUMBER(10,2),                                 /*��ο���������                                                 */
   PUBFI039             NUMBER(10,2),                                 /*��ο�������¾���                                               */
   PUBFI040             VARCHAR2(10),                                 /*����1����ҳ��ʱ����ʽ��                                          */
   PUBFI041             VARCHAR2(10),                                 /*����2���ָ�����ʽ��                                              */
   CREATE_USER          VARCHAR2(12),                                 /*������Ա          */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����      */                               
   CREATE_DATE          DATE,                                         /*��������          */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա          */
   MODI_DATE            DATE,                                         /*�޸�����          */
   FLAG                 NUMBER(1),                                    /*����״̬          */
   constraint PK_TB_PUBFI primary key (PUBFI_ID)
);
create unique index AK_TB_PUBFI on TB_PUBFI (PUBFI001,PUBFI002);
create sequence SEQ_TB_PUBFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFI to public;
grant index  on TB_PUBFI to public;
grant update on TB_PUBFI to public; 
grant delete on TB_PUBFI to public;  
grant insert on TB_PUBFI to public; 
grant select on SEQ_TB_PUBFI to public;   