/*
20130806 add by gaoxl for ���÷��������⸶���ͷ����⸶��׼
*/

/*
================================================================================
��ṹ����:TB_SERII
��ṹ����:�ͻ���װ�طõ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERII;
drop index AK_TB_SERII;
drop table TB_SERII;
create table TB_SERII  (
   SERII_ID             INTEGER                         not null,  /*�طõ���ID           */
   SERII001             INTEGER                         not null,  /*�طõ���             */
   SERII002             VARCHAR2(30),                              /*�طõ���             */
   SERII003             DATE,                                      /*�ط�����             */
   SERII004             INTEGER,                                   /*���۵���             */   
   SERII005             INTEGER,                                   /*�̳�                 */
   SERII006             INTEGER,                                   /*չλ��               */
   SERII007             INTEGER,                                   /*Ʒ��                 */
   SERII008             DATE,                                      /*��������             */
   SERII009             VARCHAR2(30),                              /*�˿�����             */
   SERII010             VARCHAR2(10),                              /*��ϵ�绰             */
   SERII011             DATE,                                      /*Լ���ͻ�����         */
   SERII012             DATE,                                      /*ʵ���ͻ�����         */
   SERII013             VARCHAR2(255),                             /*�ͻ���ַ             */
   SERII014             DATE,                                      /*�˿ͷ���Լ���ͻ����� */
   SERII015             DATE,                                      /*�˿ͷ���ʵ���ͻ����� */
   SERII016             NUMBER(4),                                 /*ʵ���ӳ�����         */
   SERII017             VARCHAR2(1),                               /*��Ʒ����             */  
   SERII018             VARCHAR2(1),                               /*�̳�������Ա����     */
   SERII019             VARCHAR2(1),                               /*չ��Ӫҵ��Ա�������� */
   SERII020             VARCHAR2(1),                               /*չ��������Ա�������� */
   SERII021             VARCHAR2(255),                             /*��ע                 */
   SERII022             INTEGER,                                   /*�ط���               */
   SERII023             NUMBER(22,2),                              /*�⸶���             */ 
   SERII024             VARCHAR2(1),                               /*�����⸶��׼         */ 
   SERII025             VARCHAR2(1),                               /*�Ƿ��쳣 0.�� 1.��         */ 
   SERII026             VARCHAR2(1),                               /*�쳣ԭ��    1.ʵ��û�ͻ� 2.�ʹ�� 3.��û��ȫ 4.�ͼٻ� 9.����  */  --20141103 add by sundan 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_SERII primary key (SERII_ID)
);
create unique index AK_TB_SERII on TB_SERII (SERII004,FLAG);
create sequence SEQ_TB_SERII minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERII to public;
grant index  on TB_SERII to public;
grant update on TB_SERII to public; 
grant delete on TB_SERII to public;  
grant insert on TB_SERII to public; 
grant select on SEQ_TB_SERII to public;   