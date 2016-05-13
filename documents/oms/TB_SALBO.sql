��/*
================================================================================
��ṹ����:TB_SALBO
��ṹ����:���˵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALBO;
drop index AK_TB_SALBO;
drop table TB_SALBO;
create table TB_SALBO  (
   SALBO_ID             INTEGER                         not null,  /*���˵�ID         */
   SALBO001             INTEGER                         not null,  /*����ID           */
   SALBO002             VARCHAR2(30)                    not null,  /*���˵���         */
   SALBO003             DATE                            not null,  /*��������         */
   SALBO004             INTEGER                         not null,  /*��˾ID           */
   SALBO005             INTEGER                         not null,  /*������֯ID       */
   SALBO006             INTEGER                         not null,  /*���۵�ID         */
   SALBO007             VARCHAR2(1)                     not null,  /*��������         */
   SALBO008             INTEGER,                                   /*�˿�ƾ֤����ID   */
   SALBO009             NUMBER(12),                                /*�˿�ƾ֤��       */
   SALBO010             INTEGER                       ,  /*̯λID           */
   SALBO011             VARCHAR2(1)                  ,  /*̯λ����         */
   SALBO012             INTEGER                        ,  /*���޺�ͬID       */
   SALBO013             INTEGER                        ,  /*�����̻�ID       */
   SALBO014             INTEGER                         not null,  /*��Ʒ��ID         */
   SALBO015             INTEGER                        ,  /*��ӪС��ID       */
   SALBO016             INTEGER                         not null,  /*�ͻ�ID           */
   SALBO017             INTEGER                         not null,  /*�ͻ���ͬ��ID     */
   SALBO018             VARCHAR2(1)                     not null,  /*���㷽ʽ         */
   SALBO019             VARCHAR2(30),                              /*�˿�����         */
   SALBO020             VARCHAR2(30),                              /*��ϵ�绰         */
   SALBO021             INTEGER,                                   /*֤������ID       */
   SALBO022             VARCHAR2(30),                              /*֤������         */
   SALBO023             NUMBER(30),                                /*��Ա����         */
   SALBO024             VARCHAR2(1),                               /*�Ƿ�μӴ���     */
   SALBO025             VARCHAR2(1),                               /*�Ƿ�ָ���ɹ�     */
   SALBO026             INTEGER,                                   /*����Ա           */
   SALBO027             INTEGER,                                   /*�ۿ���           */
   SALBO028             VARCHAR2(255),                             /*��ע             */
   SALBO029             VARCHAR2(25),                              /*����             */
   SALBO030             VARCHAR2(25),                              /*�������         */
   SALBO031             INTEGER,                                   /*�˻�ԭ��ID       */
   SALBO032             INTEGER,                                   /*¼����ID         */
   SALBO033             DATE,                                      /*¼������         */
   SALBO034             INTEGER,                                   /*�����ID         */
   SALBO035             DATE,                                      /*�������         */
   SALBO036             VARCHAR2(1)                     not null,  /*���״̬         */
   SALBO037             VARCHAR2(1),                               /*�Ƿ�ǩ��         */
   SALBO038             VARCHAR2(30),                              /*ǩ�˵���         */
   SALBO039             VARCHAR2(1),                               /*ǩ����           */
   SALBO040             Integer,                                   /*Ӧ�յ�id         */
   SALBO041             VARCHAR2(30),                              /*�̻�ƾ֤��       */--2010/3/24 add by ouwx
   SALBO042             NUMBER(12,2),                              /*�ֽ��ȯ���*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SALBO primary key (SALBO_ID)
);
create unique index AK_TB_SALBO on TB_SALBO (SALBO002,SALBO005);
create sequence SEQ_TB_SALBO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBO to public;
grant index  on TB_SALBO to public;
grant update on TB_SALBO to public; 
grant delete on TB_SALBO to public;  
grant insert on TB_SALBO to public; 
grant select on SEQ_TB_SALBO to public;   