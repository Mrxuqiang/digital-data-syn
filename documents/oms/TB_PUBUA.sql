/*
================================================================================
��ṹ����:TB_PUBUA
��ṹ����:��ӡ���ģ���
��ṹĿ��:
================================================================================
*/

drop index AK_TB_PUBUA;
drop table TB_PUBUA;
create table TB_PUBUA  (
 --PUBUA_ID             INTEGER                not null,  /*ƾ֤ģ���ID         */
   PUBUA001             VARCHAR2(30)           not null,  /*������             */
   PUBUA002             VARCHAR2(30)           not null,  /*ģ����             */  
   PUBUA003             VARCHAR2(100),                    /*ģ������             */
   PUBUA004             VARCHAR2(30)           not null,  /*ҳǩ                 */
   PUBUA005             NUMBER(1),                        /*�Ƿ�Ĭ�ϴ�ӡ����     */
   PUBUA006             NUMBER(5),                        /*���ʱ�ο���ӡ�������ҳ��ʱ�õ���*/
   PUBUA007             VARCHAR2(1),                      /*��ͼ��ŷ�ʽ 0������ݿ� 1���Ŀ¼ */
   PUBUA008             VARCHAR2(100),                    /*��ͼ�ļ���           */
   PUBUA009             NUMBER(10,2),                     /*ֽ�ſ��             */
   PUBUA010             NUMBER(10,2),                     /*ֽ�Ÿ߶�             */
   PUBUA011             CLOB,                             /*�������             */
   PUBUA012             CLOB,                             /*��ͼ����             */
   CREATE_USER          VARCHAR2(12),                     /*������Ա             */
   USER_GROUP           VARCHAR2(12),                     /*������Ա����         */                               
   CREATE_DATE          DATE,                             /*��������             */
   MODIFIER             VARCHAR2(12),                     /*�޸���Ա             */
   MODI_DATE            DATE,                             /*�޸�����             */
   FLAG                 NUMBER(1)                         /*����״̬             */
);
create unique index AK_TB_PUBUA on TB_PUBUA(PUBUA001,PUBUA002,PUBUA004);
grant select on TB_PUBUA to public;
grant index  on TB_PUBUA to public;
grant update on TB_PUBUA to public; 
grant delete on TB_PUBUA to public;  
grant insert on TB_PUBUA to public; 